load("@io_bazel_rules_go//go:def.bzl", "go_library")

go_library(
    name = "go_default_library",
    srcs = ["generator_for_scheme.go"],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/k8s.io/code-generator/cmd/client-gen/generators/scheme",
    importpath = "k8s.io/code-generator/cmd/client-gen/generators/scheme",
    visibility = ["//visibility:public"],
    deps = [
        "//vendor/k8s.io/code-generator/cmd/client-gen/path:go_default_library",
        "//vendor/k8s.io/code-generator/cmd/client-gen/types:go_default_library",
        "//vendor/k8s.io/gengo/generator:go_default_library",
        "//vendor/k8s.io/gengo/namer:go_default_library",
        "//vendor/k8s.io/gengo/types:go_default_library",
    ],
)
