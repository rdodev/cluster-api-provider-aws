load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = [
        "chain_provider.go",
        "credentials.go",
        "env_provider.go",
        "shared_credentials_provider.go",
        "static_provider.go",
    ],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/github.com/aws/aws-sdk-go/aws/credentials",
    importpath = "github.com/aws/aws-sdk-go/aws/credentials",
    visibility = ["//visibility:public"],
    deps = [
        "//vendor/github.com/aws/aws-sdk-go/aws/awserr:go_default_library",
        "//vendor/github.com/aws/aws-sdk-go/internal/shareddefaults:go_default_library",
        "//vendor/github.com/go-ini/ini:go_default_library",
    ],
)

go_test(
    name = "go_default_test",
    srcs = [
        "chain_provider_test.go",
        "credentials_bench_test.go",
        "credentials_test.go",
        "env_provider_test.go",
        "shared_credentials_provider_test.go",
        "static_provider_test.go",
    ],
    embed = [":go_default_library"],
    deps = [
        "//vendor/github.com/aws/aws-sdk-go/aws/awserr:go_default_library",
        "//vendor/github.com/aws/aws-sdk-go/internal/shareddefaults:go_default_library",
        "//vendor/github.com/stretchr/testify/assert:go_default_library",
    ],
)
