load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = [
        "any.go",
        "any.pb.go",
        "api.pb.go",
        "doc.go",
        "duration.go",
        "duration.pb.go",
        "duration_gogo.go",
        "empty.pb.go",
        "field_mask.pb.go",
        "source_context.pb.go",
        "struct.pb.go",
        "timestamp.go",
        "timestamp.pb.go",
        "timestamp_gogo.go",
        "type.pb.go",
        "wrappers.pb.go",
    ],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/github.com/gogo/protobuf/types",
    importpath = "github.com/gogo/protobuf/types",
    visibility = ["//visibility:public"],
    deps = [
        "//vendor/github.com/gogo/protobuf/proto:go_default_library",
        "//vendor/github.com/gogo/protobuf/sortkeys:go_default_library",
    ],
)

go_test(
    name = "go_default_test",
    srcs = [
        "any_test.go",
        "duration_test.go",
        "timestamp_test.go",
    ],
    embed = [":go_default_library"],
    deps = [
        "//vendor/github.com/gogo/protobuf/proto:go_default_library",
        "//vendor/github.com/gogo/protobuf/protoc-gen-gogo/descriptor:go_default_library",
    ],
)
