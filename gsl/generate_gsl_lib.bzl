# libs is an array of:
# struct(
#    name = "",
#    noinst_HEADERS = ""
#    pkginclude_HEADERS = "",
#    la_SOURCES = "",
#    src_deps = [],
# )
#

def generate_gsl(libs = []):
  all_src_headers = []
  all_dst_headers = []
  all_libs = []
  
  for i in range (0, len(libs)):
    libname = getattr(libs[i], "name")
    la_SOURCES_list = getattr(libs[i], "la_SOURCES").split(" ")
    noinst_HEADERS_list = getattr(libs[i], "noinst_HEADERS").split(" ")
    pkginclude_HEADERS_list = getattr(libs[i], "pkginclude_HEADERS").split(" ")
    
    prefix = libname
    if len(prefix) > 0:
      prefix = prefix + "/"
    header_list = pkginclude_HEADERS_list
    for j in range(0, len(header_list)):
      all_src_headers += [prefix + header_list[j]]
      all_dst_headers += ["header_copies/" + header_list[j]]
    
    if len(libname) > 0:
      libname = "gsl_" + libname
    else:
      libname = "gsl"
    
    srcs = []
    for j in range(0, len(la_SOURCES_list)):
      srcs += [prefix + la_SOURCES_list[j]]
      
    includes = []
    for j in range(0, len(noinst_HEADERS_list)):
      includes += [prefix + noinst_HEADERS_list[j]]
    for j in range(0, len(pkginclude_HEADERS_list)):
      # add headers of this lib also to includes
      includes += [prefix + pkginclude_HEADERS_list[j]]
    
    native.cc_library(
        name = libname,
        visibility = ["//visibility:private"],
        srcs = srcs,
        includes = includes,
        deps = [
            ":config",
            ":gsl_headers",
            ":gsl_headers_plain",
        ],
        copts = select({
            ":windows": [
                "/D_CRT_DECLARE_NONSTDC_NAMES=0",
                "/D_CRT_SECURE_NO_WARNINGS",
                "/wd4018 /wd4028 /wd4056 /wd4101 /wd4244 /wd4267 /wd4334 /wd4477 /wd4700 /wd4723 /wd4756 /wd4996",
            ],
        }),
    )
    all_libs += [":" + libname]
  
  native.genrule(
    name = "gsl_gen_headers",
    srcs = all_src_headers,
    outs = all_dst_headers,
    cmd_ps = ('$$srcFilesString=\"$(SRCS)\"; $$dstFilesString=\"$(OUTS)\"; $$srcFiles=$$srcFilesString.Split(\" \"); $$dstFiles=$$dstFilesString.Split(\" \"); For($$i=0; $$i -lt $$srcFiles.Length; $$i++){Copy-Item $$srcFiles[$$i] -Destination $$dstFiles[$$i]}'),
    visibility = ["//visibility:private"],
  )
  
  native.cc_library(
    name = "gsl_headers",
    visibility = ["//visibility:public"],
    deps = [":config"],
    hdrs = [":gsl_gen_headers"],
    strip_include_prefix = "header_copies/",
    include_prefix = "gsl/",
  )
  
  native.cc_library(
    name = "gsl_headers_plain",
    visibility = ["//visibility:public"],
    deps = [":config"],
    hdrs = native.glob(include=["*.h"]),
  )
  
  native.cc_library(
    name = "gsl_lib",
    visibility = ["//visibility:public"],
    deps = all_libs,
    copts = select({
        ":windows": [
            "/D_CRT_DECLARE_NONSTDC_NAMES=0",
            "/D_CRT_SECURE_NO_WARNINGS",
            "/wd4018 /wd4028 /wd4056 /wd4101 /wd4244 /wd4267 /wd4334 /wd4477 /wd4700 /wd4723 /wd4756 /wd4996",
        ],
    }),
  )