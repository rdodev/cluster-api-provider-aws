load("@io_bazel_rules_go//go:def.bzl", "go_library")

go_library(
    name = "go_default_library",
    srcs = [
        "m1.pb.go",
        "m2.pb.go",
    ],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/github.com/gogo/protobuf/protoc-gen-gogo/testdata/imports/test_a_1",
    importpath = "github.com/gogo/protobuf/protoc-gen-gogo/testdata/imports/test_a_1",
    visibility = ["//visibility:public"],
    deps = ["//vendor/github.com/gogo/protobuf/proto:go_default_library"],
)
