load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = [
        "table.go",
        "table_entry.go",
    ],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/github.com/onsi/ginkgo/extensions/table",
    importpath = "github.com/onsi/ginkgo/extensions/table",
    visibility = ["//visibility:public"],
    deps = ["//vendor/github.com/onsi/ginkgo:go_default_library"],
)

go_test(
    name = "go_default_test",
    srcs = [
        "table_suite_test.go",
        "table_test.go",
    ],
    embed = [":go_default_library"],
    deps = [
        "//vendor/github.com/onsi/ginkgo:go_default_library",
        "//vendor/github.com/onsi/gomega:go_default_library",
    ],
)
