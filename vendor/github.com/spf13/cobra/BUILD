load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = [
        "args.go",
        "bash_completions.go",
        "cobra.go",
        "command.go",
        "command_notwin.go",
        "command_win.go",
        "zsh_completions.go",
    ],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/github.com/spf13/cobra",
    importpath = "github.com/spf13/cobra",
    visibility = ["//visibility:public"],
    deps = [
        "//vendor/github.com/spf13/pflag:go_default_library",
    ] + select({
        "@io_bazel_rules_go//go/platform:windows": [
            "//vendor/github.com/inconshreveable/mousetrap:go_default_library",
        ],
        "//conditions:default": [],
    }),
)

go_test(
    name = "go_default_test",
    srcs = [
        "args_test.go",
        "bash_completions_test.go",
        "cobra_test.go",
        "command_test.go",
        "zsh_completions_test.go",
    ],
    embed = [":go_default_library"],
    deps = ["//vendor/github.com/spf13/pflag:go_default_library"],
)
