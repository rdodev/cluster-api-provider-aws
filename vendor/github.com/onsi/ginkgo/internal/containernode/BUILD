load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = ["container_node.go"],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/github.com/onsi/ginkgo/internal/containernode",
    importpath = "github.com/onsi/ginkgo/internal/containernode",
    visibility = ["//vendor/github.com/onsi/ginkgo:__subpackages__"],
    deps = [
        "//vendor/github.com/onsi/ginkgo/internal/leafnodes:go_default_library",
        "//vendor/github.com/onsi/ginkgo/types:go_default_library",
    ],
)

go_test(
    name = "go_default_test",
    srcs = [
        "container_node_suite_test.go",
        "container_node_test.go",
    ],
    embed = [":go_default_library"],
    deps = [
        "//vendor/github.com/onsi/ginkgo:go_default_library",
        "//vendor/github.com/onsi/ginkgo/internal/codelocation:go_default_library",
        "//vendor/github.com/onsi/ginkgo/internal/leafnodes:go_default_library",
        "//vendor/github.com/onsi/ginkgo/types:go_default_library",
        "//vendor/github.com/onsi/gomega:go_default_library",
    ],
)
