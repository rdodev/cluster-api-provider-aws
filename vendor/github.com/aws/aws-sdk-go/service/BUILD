load("@io_bazel_rules_go//go:def.bzl", "go_library")

go_library(
    name = "go_default_library",
    srcs = ["generate.go"],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/github.com/aws/aws-sdk-go/service",
    importpath = "github.com/aws/aws-sdk-go/service",
    visibility = ["//visibility:public"],
)
