load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = [
        "elements.go",
        "fields.go",
        "ignore.go",
        "pointer.go",
        "types.go",
    ],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/github.com/onsi/gomega/gstruct",
    importpath = "github.com/onsi/gomega/gstruct",
    visibility = ["//visibility:public"],
    deps = [
        "//vendor/github.com/onsi/gomega/format:go_default_library",
        "//vendor/github.com/onsi/gomega/gstruct/errors:go_default_library",
        "//vendor/github.com/onsi/gomega/types:go_default_library",
    ],
)

go_test(
    name = "go_default_test",
    srcs = [
        "elements_test.go",
        "fields_test.go",
        "gstruct_tests_suite_test.go",
        "ignore_test.go",
        "pointer_test.go",
    ],
    embed = [":go_default_library"],
    deps = [
        "//vendor/github.com/onsi/ginkgo:go_default_library",
        "//vendor/github.com/onsi/gomega:go_default_library",
    ],
)
