load("@io_bazel_rules_go//go:def.bzl", "go_library")

go_library(
    name = "go_default_library",
    srcs = ["singlechecker.go"],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/golang.org/x/tools/go/analysis/singlechecker",
    importpath = "golang.org/x/tools/go/analysis/singlechecker",
    visibility = ["//visibility:public"],
    deps = [
        "//vendor/golang.org/x/tools/go/analysis:go_default_library",
        "//vendor/golang.org/x/tools/go/analysis/internal/checker:go_default_library",
    ],
)
