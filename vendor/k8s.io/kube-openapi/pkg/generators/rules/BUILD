load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = [
        "doc.go",
        "names_match.go",
    ],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/k8s.io/kube-openapi/pkg/generators/rules",
    importpath = "k8s.io/kube-openapi/pkg/generators/rules",
    visibility = ["//visibility:public"],
    deps = [
        "//vendor/k8s.io/gengo/types:go_default_library",
        "//vendor/k8s.io/kube-openapi/pkg/util/sets:go_default_library",
    ],
)

go_test(
    name = "go_default_test",
    srcs = ["names_match_test.go"],
    embed = [":go_default_library"],
    deps = ["//vendor/k8s.io/gengo/types:go_default_library"],
)
