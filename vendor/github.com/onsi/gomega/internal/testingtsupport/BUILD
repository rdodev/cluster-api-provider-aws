load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = ["testing_t_support.go"],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/github.com/onsi/gomega/internal/testingtsupport",
    importpath = "github.com/onsi/gomega/internal/testingtsupport",
    visibility = ["//vendor/github.com/onsi/gomega:__subpackages__"],
    deps = ["//vendor/github.com/onsi/gomega/types:go_default_library"],
)

go_test(
    name = "go_default_test",
    srcs = ["testing_t_support_test.go"],
    embed = [":go_default_library"],
    deps = ["//vendor/github.com/onsi/gomega:go_default_library"],
)
