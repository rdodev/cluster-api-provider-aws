load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = [
        "leakybucket.go",
        "memory.go",
        "storage.go",
    ],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/github.com/hpcloud/tail/ratelimiter",
    importpath = "github.com/hpcloud/tail/ratelimiter",
    visibility = ["//visibility:public"],
)

go_test(
    name = "go_default_test",
    srcs = ["leakybucket_test.go"],
    embed = [":go_default_library"],
)
