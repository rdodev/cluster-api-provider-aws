load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = ["name.go"],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/k8s.io/apimachinery/pkg/api/validation/path",
    importpath = "k8s.io/apimachinery/pkg/api/validation/path",
    visibility = ["//visibility:public"],
)

go_test(
    name = "go_default_test",
    srcs = ["name_test.go"],
    embed = [":go_default_library"],
)
