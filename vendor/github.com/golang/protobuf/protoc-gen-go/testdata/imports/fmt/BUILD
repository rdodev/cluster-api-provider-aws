load("@io_bazel_rules_go//go:def.bzl", "go_library")

go_library(
    name = "go_default_library",
    srcs = ["m.pb.go"],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/github.com/golang/protobuf/protoc-gen-go/testdata/imports/fmt",
    importpath = "github.com/golang/protobuf/protoc-gen-go/testdata/imports/fmt",
    visibility = ["//visibility:public"],
    deps = ["//vendor/github.com/golang/protobuf/proto:go_default_library"],
)
