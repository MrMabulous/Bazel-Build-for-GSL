def make_struct(name, noinst_HEADERS, pkginclude_HEADERS, la_SOURCES, src_deps = []):
  return struct(
             name = name,
             noinst_HEADERS = noinst_HEADERS,
             pkginclude_HEADERS = pkginclude_HEADERS,
             la_SOURCES = la_SOURCES,
             src_deps = src_deps
  )