load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = ["timeseries.go"],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/golang.org/x/net/internal/timeseries",
    importpath = "golang.org/x/net/internal/timeseries",
    visibility = ["//vendor/golang.org/x/net:__subpackages__"],
)

go_test(
    name = "go_default_test",
    srcs = ["timeseries_test.go"],
    embed = [":go_default_library"],
)
