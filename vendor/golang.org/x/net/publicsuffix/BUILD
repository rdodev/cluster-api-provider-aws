load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = [
        "list.go",
        "table.go",
    ],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/golang.org/x/net/publicsuffix",
    importpath = "golang.org/x/net/publicsuffix",
    visibility = ["//visibility:public"],
)

go_test(
    name = "go_default_test",
    srcs = [
        "list_test.go",
        "table_test.go",
    ],
    embed = [":go_default_library"],
)
