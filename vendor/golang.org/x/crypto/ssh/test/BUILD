load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = ["doc.go"],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/golang.org/x/crypto/ssh/test",
    importpath = "golang.org/x/crypto/ssh/test",
    visibility = ["//visibility:public"],
)

go_test(
    name = "go_default_test",
    srcs = [
        "agent_unix_test.go",
        "banner_test.go",
        "cert_test.go",
        "dial_unix_test.go",
        "forward_unix_test.go",
        "multi_auth_test.go",
        "session_test.go",
        "test_unix_test.go",
        "testdata_test.go",
    ],
    embed = [":go_default_library"],
    deps = [
        "//vendor/golang.org/x/crypto/ssh:go_default_library",
        "//vendor/golang.org/x/crypto/ssh/testdata:go_default_library",
    ] + select({
        "@io_bazel_rules_go//go/platform:darwin": [
            "//vendor/golang.org/x/crypto/ssh/agent:go_default_library",
        ],
        "@io_bazel_rules_go//go/platform:dragonfly": [
            "//vendor/golang.org/x/crypto/ssh/agent:go_default_library",
        ],
        "@io_bazel_rules_go//go/platform:freebsd": [
            "//vendor/golang.org/x/crypto/ssh/agent:go_default_library",
        ],
        "@io_bazel_rules_go//go/platform:linux": [
            "//vendor/golang.org/x/crypto/ssh/agent:go_default_library",
        ],
        "@io_bazel_rules_go//go/platform:netbsd": [
            "//vendor/golang.org/x/crypto/ssh/agent:go_default_library",
        ],
        "@io_bazel_rules_go//go/platform:openbsd": [
            "//vendor/golang.org/x/crypto/ssh/agent:go_default_library",
        ],
        "//conditions:default": [],
    }),
)
