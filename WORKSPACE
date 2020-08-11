workspace(name = "gsl")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "gsl",
    strip_prefix = "gsl-2.6",
    urls = ["http://mirror.easyname.at/gnu/gsl/gsl-2.6.tar.gz"],
    sha256  = "b782339fc7a38fe17689cb39966c4d821236c28018b6593ddb6fd59ee40786a8",
    build_file = "@//third_party:gsl.BUILD",
)
