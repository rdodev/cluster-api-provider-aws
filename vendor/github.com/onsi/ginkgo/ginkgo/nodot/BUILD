load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = ["nodot.go"],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/github.com/onsi/ginkgo/ginkgo/nodot",
    importpath = "github.com/onsi/ginkgo/ginkgo/nodot",
    visibility = ["//visibility:public"],
)

go_test(
    name = "go_default_test",
    srcs = [
        "nodot_suite_test.go",
        "nodot_test.go",
    ],
    embed = [":go_default_library"],
    deps = [
        "//vendor/github.com/onsi/ginkgo:go_default_library",
        "//vendor/github.com/onsi/gomega:go_default_library",
    ],
)
