load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library")

go_library(
    name = "go_default_library",
    srcs = [
        "tab_logger.go",
        "usage_example.go",
    ],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/github.com/go-logr/logr/examples",
    importpath = "github.com/go-logr/logr/examples",
    visibility = ["//visibility:private"],
    deps = ["//vendor/github.com/go-logr/logr:go_default_library"],
)

go_binary(
    name = "examples",
    embed = [":go_default_library"],
    visibility = ["//visibility:public"],
)
