load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = [
        "2q.go",
        "arc.go",
        "doc.go",
        "lru.go",
    ],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/github.com/hashicorp/golang-lru",
    importpath = "github.com/hashicorp/golang-lru",
    visibility = ["//visibility:public"],
    deps = ["//vendor/github.com/hashicorp/golang-lru/simplelru:go_default_library"],
)

go_test(
    name = "go_default_test",
    srcs = [
        "2q_test.go",
        "arc_test.go",
        "lru_test.go",
    ],
    embed = [":go_default_library"],
)
