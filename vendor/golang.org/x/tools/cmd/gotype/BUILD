load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library")

go_library(
    name = "go_default_library",
    srcs = [
        "gotype.go",
        "sizesFor18.go",
        "sizesFor19.go",
    ],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/golang.org/x/tools/cmd/gotype",
    importpath = "golang.org/x/tools/cmd/gotype",
    visibility = ["//visibility:private"],
)

go_binary(
    name = "gotype",
    embed = [":go_default_library"],
    visibility = ["//visibility:public"],
)
