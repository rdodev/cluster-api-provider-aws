load("@io_bazel_rules_go//go:def.bzl", "go_library")

go_library(
    name = "go_default_library",
    srcs = ["codec.go"],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/k8s.io/apimachinery/pkg/api/testing",
    importpath = "k8s.io/apimachinery/pkg/api/testing",
    visibility = ["//visibility:public"],
    deps = [
        "//vendor/k8s.io/apimachinery/pkg/runtime:go_default_library",
        "//vendor/k8s.io/apimachinery/pkg/runtime/schema:go_default_library",
        "//vendor/k8s.io/apimachinery/pkg/runtime/serializer:go_default_library",
        "//vendor/k8s.io/apimachinery/pkg/runtime/serializer/recognizer:go_default_library",
    ],
)
