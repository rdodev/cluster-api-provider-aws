load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = [
        "api.go",
        "astnodetype_string.go",
        "functions.go",
        "interpreter.go",
        "lexer.go",
        "parser.go",
        "toktype_string.go",
        "util.go",
    ],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/github.com/jmespath/go-jmespath",
    importpath = "github.com/jmespath/go-jmespath",
    visibility = ["//visibility:public"],
)

go_test(
    name = "go_default_test",
    srcs = [
        "api_test.go",
        "compliance_test.go",
        "interpreter_test.go",
        "lexer_test.go",
        "parser_test.go",
        "util_test.go",
    ],
    embed = [":go_default_library"],
    deps = ["//vendor/github.com/stretchr/testify/assert:go_default_library"],
)
