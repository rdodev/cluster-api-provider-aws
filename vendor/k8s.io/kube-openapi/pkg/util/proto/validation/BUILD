load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = [
        "errors.go",
        "types.go",
        "validation.go",
    ],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/k8s.io/kube-openapi/pkg/util/proto/validation",
    importpath = "k8s.io/kube-openapi/pkg/util/proto/validation",
    visibility = ["//visibility:public"],
    deps = ["//vendor/k8s.io/kube-openapi/pkg/util/proto:go_default_library"],
)

go_test(
    name = "go_default_test",
    srcs = [
        "validation_suite_test.go",
        "validation_test.go",
    ],
    embed = [":go_default_library"],
    deps = [
        "//vendor/github.com/ghodss/yaml:go_default_library",
        "//vendor/github.com/onsi/ginkgo:go_default_library",
        "//vendor/github.com/onsi/ginkgo/config:go_default_library",
        "//vendor/github.com/onsi/ginkgo/types:go_default_library",
        "//vendor/github.com/onsi/gomega:go_default_library",
        "//vendor/k8s.io/kube-openapi/pkg/util/proto:go_default_library",
        "//vendor/k8s.io/kube-openapi/pkg/util/proto/testing:go_default_library",
    ],
)
