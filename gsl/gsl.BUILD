config_setting(
    name = "windows",
    constraint_values = [
        "@bazel_tools//platforms:windows",
    ],
)

#
# When GSL is built with CMake, it generates config.h
#
# To make this work with Bazel, versions of those files are inlined here,
# along with genrule/cc_library rules to paste them into files & include them
# as headers.
#

CONFIG_H_MSVC = """
#ifndef CONFIG_H_
#define CONFIG_H_

/* Disable deprecated functions and enums while building */
#define GSL_DISABLE_DEPRECATED 1

/* Define if you have inline with C99 behavior */
#define HAVE_C99_INLINE 1

/* Define to 1 if you have the declaration of `acosh', and to 0 if you don't.
   */
#define HAVE_DECL_ACOSH 1

/* Define to 1 if you have the declaration of `asinh', and to 0 if you don't.
   */
#define HAVE_DECL_ASINH 1

/* Define to 1 if you have the declaration of `atanh', and to 0 if you don't.
   */
#define HAVE_DECL_ATANH 1

/* Define to 1 if you have the declaration of `expm1', and to 0 if you don't.
   */
#define HAVE_DECL_EXPM1 1

/* Define to 1 if you have the declaration of `feenableexcept', and to 0 if
   you don't. */
#define HAVE_DECL_FEENABLEEXCEPT 0

/* Define to 1 if you have the declaration of `fesettrapenable', and to 0 if
   you don't. */
#define HAVE_DECL_FESETTRAPENABLE 0

/* Define to 1 if you have the declaration of `finite', and to 0 if you don't.
   */
#define HAVE_DECL_FINITE 1

/* Define to 1 if you have the declaration of `fprnd_t', and to 0 if you
   don't. */
#define HAVE_DECL_FPRND_T 0

/* Define to 1 if you have the declaration of `frexp', and to 0 if you don't.
   */
#define HAVE_DECL_FREXP 0

/* Define to 1 if you have the declaration of `hypot', and to 0 if you don't.
   */
#define HAVE_DECL_HYPOT 1

/* Define to 1 if you have the declaration of `isfinite', and to 0 if you
   don't. */
#define HAVE_DECL_ISFINITE 1

/* Define to 1 if you have the declaration of `isinf', and to 0 if you don't.
   */
#define HAVE_DECL_ISINF 1

/* Define to 1 if you have the declaration of `isnan', and to 0 if you don't.
   */
#define HAVE_DECL_ISNAN 1

/* Define to 1 if you have the declaration of `ldexp', and to 0 if you don't.
   */
#define HAVE_DECL_LDEXP 1

/* Define to 1 if you have the declaration of `log1p', and to 0 if you don't.
   */
#define HAVE_DECL_LOG1P 1

/* Define to 1 if you have the <dlfcn.h> header file. */
#undef HAVE_DLFCN_H

/* Define to 1 if you don't have `vprintf' but do have `_doprnt.' */
#undef HAVE_DOPRNT

/* Defined if you have ansi EXIT_SUCCESS and EXIT_FAILURE in stdlib.h */
#define HAVE_EXIT_SUCCESS_AND_FAILURE 1

/* Defined on architectures with excess floating-point precision */
#define HAVE_EXTENDED_PRECISION_REGISTERS 1

/* Define if x86 processor has sse extensions. */
#define HAVE_FPU_X86_SSE 1

/* Define to 1 if you have the <ieeefp.h> header file. */
#undef HAVE_IEEEFP_H

/* Define this if IEEE comparisons work correctly (e.g. NaN != NaN) */
#define HAVE_IEEE_COMPARISONS 1

/* Define this if IEEE denormalized numbers are available */
#define HAVE_IEEE_DENORMALS 1

/* Define if you have inline */
#define HAVE_INLINE 1

/* Define to 1 if you have the <inttypes.h> header file. */
#define HAVE_INTTYPES_H 1

/* Define to 1 if you have the `m' library (-lm). */
#undef HAVE_LIBM

/* Define to 1 if you have the `memcpy' function. */
#define HAVE_MEMCPY 1

/* Define to 1 if you have the `memmove' function. */
#define HAVE_MEMMOVE 1

/* Define to 1 if you have the <memory.h> header file. */
#define HAVE_MEMORY_H 1

/* Define this if printf can handle %Lf for long double */
#define HAVE_PRINTF_LONGDOUBLE

/* Define to 1 if you have the <stdint.h> header file. */
#define HAVE_STDINT_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#define HAVE_STDLIB_H 1

/* Define to 1 if you have the `strdup' function. */
#define HAVE_STRDUP 1

/* Define to 1 if you have the <strings.h> header file. */
#undef HAVE_STRINGS_H

/* Define to 1 if you have the <string.h> header file. */
#define HAVE_STRING_H 1

/* Define to 1 if you have the `strtol' function. */
#define HAVE_STRTOL 1

/* Define to 1 if you have the `strtoul' function. */
#define HAVE_STRTOUL 1

/* Define to 1 if you have the <sys/stat.h> header file. */
#undef HAVE_SYS_STAT_H

/* Define to 1 if you have the <sys/types.h> header file. */
#undef HAVE_SYS_TYPES_H

/* Define to 1 if you have the <unistd.h> header file. */
#undef HAVE_UNISTD_H

/* Define to 1 if you have the `vprintf' function. */
#define HAVE_VPRINTF 1

/* Define if you need to hide the static definitions of inline functions */
#undef HIDE_INLINE_STATIC

/* Define to the sub-directory in which libtool stores uninstalled libraries.
   */
#undef LT_OBJDIR

/* Name of package */
#define PACKAGE "gsl"

/* Define to the address where bug reports for this package should be sent. */
#define PACKAGE_BUGREPORT ""

/* Define to the full name of this package. */
#define PACKAGE_NAME PACKAGE

/* Define to the one symbol short name of this package. */
#define PACKAGE_TARNAME PACKAGE

/* Define to the home page for this package. */
#define PACKAGE_URL "http://mirror.easyname.at/gnu/gsl/gsl-2.6.tar.gz"

/* Defined if this is an official release */
#undef RELEASED

/* Define to 1 if you have the ANSI C header files. */
#define STDC_HEADERS 1

/* Version number of package */
#define VERSION "2.6"

/* Define to the version of this package. */
#define PACKAGE_VERSION VERSION

/* Define to the full name and version of this package. */
#define PACKAGE_STRING "gsl 2.6"

/* Define to 1 if type `char' is unsigned and you are not using gcc.  */
#ifndef __CHAR_UNSIGNED__
# undef __CHAR_UNSIGNED__
#endif

/* Define to `__inline__' or `__inline' if that's what the C compiler
   calls it, or to nothing if 'inline' is not supported under any name.  */
#ifndef __cplusplus
#define __inline
#endif

/* Define to `unsigned int' if <sys/types.h> does not define. */
#undef size_t

/* Define to empty if the keyword `volatile' does not work. Warning: valid
   code using `volatile' can become incorrect without. Disable with care. */
#undef volatile

/* Use 0 and 1 for EXIT_SUCCESS and EXIT_FAILURE if we don't have them */
#if !HAVE_EXIT_SUCCESS_AND_FAILURE
#define EXIT_SUCCESS 0
#define EXIT_FAILURE 1
#endif

/* Define one of these if you have a known IEEE arithmetic interface */
#undef HAVE_GNUSPARC_IEEE_INTERFACE
#undef HAVE_GNUM68K_IEEE_INTERFACE
#undef HAVE_GNUPPC_IEEE_INTERFACE
#undef HAVE_GNUX86_IEEE_INTERFACE
#undef HAVE_SUNOS4_IEEE_INTERFACE
#undef HAVE_SOLARIS_IEEE_INTERFACE
#undef HAVE_HPUX11_IEEE_INTERFACE
#undef HAVE_HPUX_IEEE_INTERFACE
#undef HAVE_TRU64_IEEE_INTERFACE
#undef HAVE_IRIX_IEEE_INTERFACE
#undef HAVE_AIX_IEEE_INTERFACE
#undef HAVE_FREEBSD_IEEE_INTERFACE
#undef HAVE_OS2EMX_IEEE_INTERFACE
#undef HAVE_NETBSD_IEEE_INTERFACE
#undef HAVE_OPENBSD_IEEE_INTERFACE
#undef HAVE_DARWIN_IEEE_INTERFACE
#undef HAVE_DARWIN86_IEEE_INTERFACE

/* Define a rounding function which moves extended precision values
   out of registers and rounds them to double-precision. This should
   be used *sparingly*, in places where it is necessary to keep
   double-precision rounding for critical expressions while running in
   extended precision. For example, the following code should ensure
   exact equality, even when extended precision registers are in use,

      double q = GSL_COERCE_DBL(3.0/7.0) ;
      if (q == GSL_COERCE_DBL(3.0/7.0)) { ... } ;

   It carries a penalty even when the program is running in double
   precision mode unless you compile a separate version of the
   library with HAVE_EXTENDED_PRECISION_REGISTERS turned off. */

#if HAVE_EXTENDED_PRECISION_REGISTERS
#define GSL_COERCE_DBL(x) (gsl_coerce_double(x))
#else
#define GSL_COERCE_DBL(x) (x)
#endif

/* Substitute gsl functions for missing system functions */

#if !HAVE_DECL_HYPOT
#define hypot gsl_hypot
#endif

#if !HAVE_DECL_LOG1P
#define log1p gsl_log1p
#endif

#if !HAVE_DECL_EXPM1
#define expm1 gsl_expm1
#endif

#if !HAVE_DECL_ACOSH
#define acosh gsl_acosh
#endif

#if !HAVE_DECL_ASINH
#define asinh gsl_asinh
#endif

#if !HAVE_DECL_ATANH
#define atanh gsl_atanh
#endif

#if !HAVE_DECL_LDEXP
#define ldexp gsl_ldexp
#endif

#if !HAVE_DECL_FREXP
#define frexp gsl_frexp
#endif

#if !HAVE_DECL_ISINF
#define isinf gsl_isinf
#endif

#if !HAVE_DECL_ISFINITE
#define isfinite gsl_finite
#endif

#if !HAVE_DECL_FINITE
#define finite gsl_finite
#endif

#if !HAVE_DECL_ISNAN
#define isnan gsl_isnan
#endif

#ifdef __GNUC__
#define DISCARD_POINTER(p) do { ; } while(p ? 0 : 0);
#else
#define DISCARD_POINTER(p) /* ignoring discarded pointer */
#endif

#if defined(GSL_RANGE_CHECK_OFF) || !defined(GSL_RANGE_CHECK)
#define GSL_RANGE_CHECK 0  /* turn off range checking by default internally */
#endif

#define RETURN_IF_NULL(x) if (!x) { return ; }
#endif  // CONFIG_H_
"""

genrule(
    name = "gsl_config",
    outs = ["config.h"],
    cmd_ps = ("@'\n%s\n'@ | Out-File $(OUTS)" % CONFIG_H_MSVC),
    cmd = ("echo '%s' > $(OUTS)" % CONFIG_H_MSVC),
    visibility = ["//visibility:private"],
)

cc_library(
    name = "config",
    visibility = ["//visibility:public"],
    hdrs = [":gsl_config"],
)

cc_library(
    name = "gsl_hdrs",
    visibility = ["//visibility:public"],
    hdrs = glob(include = [
                   "gsl_*.h",
                   "config.h"
                ],) +
           [":gsl_config"],
    include_prefix = "gsl/",
    deps = [":gsl_sys_hdrs"],
)

cc_library(
    name = "gsl_blas_hdrs",
    visibility = ["//visibility:public"],
    srcs = [],
    hdrs = glob(
        include = ["blas/*.h"],
    ),
    strip_include_prefix = "blas/",
    include_prefix = "gsl/",
)

cc_library(
    name = "gsl_cblas_hdrs",
    visibility = ["//visibility:public"],
    srcs = [],
    hdrs = glob(
        include = ["cblas/*.h"],
    ),
    strip_include_prefix = "cblas/",
    include_prefix = "gsl/",
)

cc_library(
    name = "gsl_block_hdrs",
    visibility = ["//visibility:public"],
    srcs = [],
    hdrs = glob(
        include = ["block/*.h"],
    ),
    strip_include_prefix = "block/",
    include_prefix = "gsl/",
)

cc_library(
    name = "gsl_matrix_hdrs",
    visibility = ["//visibility:public"],
    srcs = [],
    hdrs = glob(
        include = ["matrix/*.h"],
    ),
    strip_include_prefix = "matrix/",
    include_prefix = "gsl/",
)

cc_library(
    name = "gsl_linalg_hdrs",
    visibility = ["//visibility:public"],
    srcs = [],
    hdrs = glob(
        include = ["linalg/*.h"],
    ),
    strip_include_prefix = "linalg/",
    include_prefix = "gsl/",
)

cc_library(
    name = "gsl_statistics_hdrs",
    visibility = ["//visibility:public"],
    srcs = [],
    hdrs = glob(
        include = ["statistics/*.h"],
    ),
    strip_include_prefix = "statistics/",
    include_prefix = "gsl/",
)

cc_library(
    name = "gsl_sys_hdrs",
    visibility = ["//visibility:public"],
    srcs = [],
    hdrs = glob(
        include = ["sys/*.h"],
    ),
    strip_include_prefix = "sys/",
    include_prefix = "gsl/",
)

cc_library(
    name = "gsl_permutation_hdrs",
    visibility = ["//visibility:public"],
    srcs = [],
    hdrs = glob(
        include = ["permutation/*.h"],
    ),
    strip_include_prefix = "permutation/",
    include_prefix = "gsl/",
)

cc_library(
    name = "gsl_complex_hdrs",
    visibility = ["//visibility:public"],
    srcs = [],
    hdrs = glob(
        include = ["complex/*.h"],
    ),
    strip_include_prefix = "complex/",
    include_prefix = "gsl/", 
)

cc_library(
    name = "gsl_vector_hdrs",
    visibility = ["//visibility:public"],
    srcs = [],
    hdrs = glob(
        include = ["vector/*.h"],
    ),
    strip_include_prefix = "vector/",
    include_prefix = "gsl/",
    deps = [
        ":gsl_complex_hdrs",
        ":gsl_block_hdrs",
    ],
)

cc_library(
    name = "gsl_err_hdrs",
    visibility = ["//visibility:public"],
    srcs = [],
    hdrs = glob(
        include = ["err/*.h"],
    ),
    strip_include_prefix = "err/",
    include_prefix = "gsl/", 
    deps = [":gsl_hdrs"],
)

cc_library(
    name = "gsl_sort_hdrs",
    visibility = ["//visibility:public"],
    srcs = [],
    hdrs = glob(
        include = ["sort/*.h"],
    ),
    strip_include_prefix = "sort/",
    include_prefix = "gsl/", 
    deps = [":gsl_hdrs"],
)

cc_library(
    name = "gsl_min_hdrs",
    visibility = ["//visibility:public"],
    srcs = [],
    hdrs = glob(
        include = ["min/*.h"],
    ),
    strip_include_prefix = "min/",
    include_prefix = "gsl/", 
    deps = [":gsl_hdrs"],
)

cc_library(
    name = "gsl_multifit_hdrs",
    visibility = ["//visibility:public"],
    hdrs = glob(
        include = ["multifit/*.h"],
    ),
    strip_include_prefix = "multifit/",
    include_prefix = "gsl/", 
)

cc_library(
    name = "gsl_multifit",
    visibility = ["//visibility:public"],
    srcs = [
        "multifit/gcv.c",
        "multifit/multilinear.c",
        "multifit/multiwlinear.c",
        "multifit/work.c",
        "multifit/lmniel.c",
        "multifit/lmder.c",
        "multifit/fsolver.c",
        "multifit/fdfsolver.c",
        "multifit/fdfridge.c",
        "multifit/fdjac.c",
        "multifit/convergence.c",
        "multifit/gradient.c",
        "multifit/covar.c",
        "multifit/multirobust.c",
        "multifit/robust_wfun.c",
        "multifit/multireg.c",
    ],
    includes = [
        "multifit/linear_common.c",
        "multifit/lmmisc.c",
        "multifit/lmniel.c",
        "multifit/lmutil.c",
        "multifit/lmpar.c",
        "multifit/qrsolv.c",
        "multifit/lmset.c",
        "multifit/lmiterate.c",
    ],
    deps = [
        ":config",
        ":gsl_hdrs",
        ":gsl_blas_hdrs",
        ":gsl_cblas_hdrs",
        ":gsl_err_hdrs",
        ":gsl_matrix_hdrs",
        ":gsl_multifit_hdrs",
        ":gsl_min_hdrs",
        ":gsl_linalg_hdrs",
        ":gsl_permutation_hdrs",
        ":gsl_statistics_hdrs",
        ":gsl_sort_hdrs",
        ":gsl_vector_hdrs",
    ],
    copts = select({
        ":windows": [
            "/D_CRT_DECLARE_NONSTDC_NAMES=0",
            "/D_CRT_SECURE_NO_WARNINGS",
            "/wd4018 /wd4028 /wd4056 /wd4101 /wd4244 /wd4267 /wd4334 /wd4477 /wd4700 /wd4723 /wd4756 /wd4996",
        ],
    }),
)