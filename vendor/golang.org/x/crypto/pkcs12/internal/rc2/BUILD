load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = ["rc2.go"],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/golang.org/x/crypto/pkcs12/internal/rc2",
    importpath = "golang.org/x/crypto/pkcs12/internal/rc2",
    visibility = ["//vendor/golang.org/x/crypto/pkcs12:__subpackages__"],
)

go_test(
    name = "go_default_test",
    srcs = [
        "bench_test.go",
        "rc2_test.go",
    ],
    embed = [":go_default_library"],
)
