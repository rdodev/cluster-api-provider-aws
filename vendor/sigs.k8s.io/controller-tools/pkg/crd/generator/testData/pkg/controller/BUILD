load("@io_bazel_rules_go//go:def.bzl", "go_library")

go_library(
    name = "go_default_library",
    srcs = ["controller.go"],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/sigs.k8s.io/controller-tools/pkg/crd/generator/testData/pkg/controller",
    importpath = "sigs.k8s.io/controller-tools/pkg/crd/generator/testData/pkg/controller",
    visibility = ["//visibility:public"],
    deps = ["//vendor/sigs.k8s.io/controller-runtime/pkg/manager:go_default_library"],
)
