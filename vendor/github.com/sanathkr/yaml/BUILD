load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = [
        "fields.go",
        "yaml.go",
    ],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/github.com/sanathkr/yaml",
    importpath = "github.com/sanathkr/yaml",
    visibility = ["//visibility:public"],
    deps = ["//vendor/gopkg.in/yaml.v2:go_default_library"],
)

go_test(
    name = "go_default_test",
    srcs = ["yaml_test.go"],
    embed = [":go_default_library"],
)
