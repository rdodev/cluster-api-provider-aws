load("@io_bazel_rules_go//go:def.bzl", "go_library")

go_library(
    name = "go_default_library",
    srcs = ["httpfs.go"],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/golang.org/x/tools/godoc/vfs/httpfs",
    importpath = "golang.org/x/tools/godoc/vfs/httpfs",
    visibility = ["//visibility:public"],
    deps = ["//vendor/golang.org/x/tools/godoc/vfs:go_default_library"],
)
