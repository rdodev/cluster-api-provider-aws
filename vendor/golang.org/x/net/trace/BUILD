load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = [
        "events.go",
        "histogram.go",
        "trace.go",
        "trace_go16.go",
        "trace_go17.go",
    ],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/golang.org/x/net/trace",
    importpath = "golang.org/x/net/trace",
    visibility = ["//visibility:public"],
    deps = [
        "//vendor/golang.org/x/net/context:go_default_library",
        "//vendor/golang.org/x/net/internal/timeseries:go_default_library",
    ],
)

go_test(
    name = "go_default_test",
    srcs = [
        "histogram_test.go",
        "trace_test.go",
    ],
    embed = [":go_default_library"],
)
