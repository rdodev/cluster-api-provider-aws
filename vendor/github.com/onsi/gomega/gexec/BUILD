load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = [
        "build.go",
        "exit_matcher.go",
        "prefixed_writer.go",
        "session.go",
    ],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/github.com/onsi/gomega/gexec",
    importpath = "github.com/onsi/gomega/gexec",
    visibility = ["//visibility:public"],
    deps = [
        "//vendor/github.com/onsi/gomega:go_default_library",
        "//vendor/github.com/onsi/gomega/format:go_default_library",
        "//vendor/github.com/onsi/gomega/gbytes:go_default_library",
    ],
)

go_test(
    name = "go_default_test",
    srcs = [
        "build_test.go",
        "exit_matcher_test.go",
        "gexec_suite_test.go",
        "prefixed_writer_test.go",
        "session_test.go",
    ],
    embed = [":go_default_library"],
    deps = [
        "//vendor/github.com/onsi/ginkgo:go_default_library",
        "//vendor/github.com/onsi/gomega:go_default_library",
        "//vendor/github.com/onsi/gomega/gbytes:go_default_library",
    ],
)
