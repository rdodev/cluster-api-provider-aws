load("@io_bazel_rules_go//go:def.bzl", "go_library")

go_library(
    name = "go_default_library",
    srcs = ["extension_extra.pb.go"],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/github.com/gogo/protobuf/protoc-gen-gogo/testdata/extension_extra",
    importpath = "github.com/gogo/protobuf/protoc-gen-gogo/testdata/extension_extra",
    visibility = ["//visibility:public"],
    deps = ["//vendor/github.com/gogo/protobuf/proto:go_default_library"],
)
