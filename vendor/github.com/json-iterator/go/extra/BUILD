load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = [
        "binary_as_string_codec.go",
        "fuzzy_decoder.go",
        "naming_strategy.go",
        "privat_fields.go",
        "time_as_int64_codec.go",
    ],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/github.com/json-iterator/go/extra",
    importpath = "github.com/json-iterator/go/extra",
    visibility = ["//visibility:public"],
    deps = [
        "//vendor/github.com/json-iterator/go:go_default_library",
        "//vendor/github.com/modern-go/reflect2:go_default_library",
    ],
)

go_test(
    name = "go_default_test",
    srcs = [
        "binary_as_string_codec_test.go",
        "fuzzy_decoder_test.go",
        "naming_strategy_test.go",
        "private_fields_test.go",
        "time_as_int64_codec_test.go",
    ],
    embed = [":go_default_library"],
    deps = [
        "//vendor/github.com/json-iterator/go:go_default_library",
        "//vendor/github.com/stretchr/testify/require:go_default_library",
    ],
)
