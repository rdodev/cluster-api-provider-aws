load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = [
        "doc.go",
        "gen.go",
        "static.go",
    ],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/golang.org/x/tools/godoc/static",
    importpath = "golang.org/x/tools/godoc/static",
    visibility = ["//visibility:public"],
)

go_test(
    name = "go_default_test",
    srcs = ["gen_test.go"],
    embed = [":go_default_library"],
)
