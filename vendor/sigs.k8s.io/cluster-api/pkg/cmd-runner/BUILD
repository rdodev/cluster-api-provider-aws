load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = ["cmd_runner.go"],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/sigs.k8s.io/cluster-api/pkg/cmd-runner",
    importpath = "sigs.k8s.io/cluster-api/pkg/cmd-runner",
    visibility = ["//visibility:public"],
)

go_test(
    name = "go_default_test",
    srcs = ["cmd_runner_test.go"],
    embed = [":go_default_library"],
)
