load("@io_bazel_rules_go//go:def.bzl", "go_library")

go_library(
    name = "go_default_library",
    srcs = ["deprecated.pb.go"],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/github.com/golang/protobuf/protoc-gen-go/testdata/deprecated",
    importpath = "github.com/golang/protobuf/protoc-gen-go/testdata/deprecated",
    visibility = ["//visibility:public"],
    deps = [
        "//vendor/github.com/golang/protobuf/proto:go_default_library",
        "//vendor/golang.org/x/net/context:go_default_library",
        "//vendor/google.golang.org/grpc:go_default_library",
    ],
)
