load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = ["encoding.go"],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/golang.org/x/text/encoding",
    importpath = "golang.org/x/text/encoding",
    visibility = ["//visibility:public"],
    deps = [
        "//vendor/golang.org/x/text/encoding/internal/identifier:go_default_library",
        "//vendor/golang.org/x/text/transform:go_default_library",
    ],
)

go_test(
    name = "go_default_test",
    srcs = [
        "encoding_test.go",
        "example_test.go",
    ],
    data = glob(["testdata/**"]),
    embed = [":go_default_library"],
    deps = [
        "//vendor/golang.org/x/text/encoding/charmap:go_default_library",
        "//vendor/golang.org/x/text/encoding/unicode:go_default_library",
        "//vendor/golang.org/x/text/transform:go_default_library",
    ],
)
