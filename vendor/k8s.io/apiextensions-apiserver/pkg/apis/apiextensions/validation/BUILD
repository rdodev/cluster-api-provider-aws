load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = ["validation.go"],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/k8s.io/apiextensions-apiserver/pkg/apis/apiextensions/validation",
    importpath = "k8s.io/apiextensions-apiserver/pkg/apis/apiextensions/validation",
    visibility = ["//visibility:public"],
    deps = [
        "//vendor/k8s.io/apiextensions-apiserver/pkg/apis/apiextensions:go_default_library",
        "//vendor/k8s.io/apiextensions-apiserver/pkg/apiserver/validation:go_default_library",
        "//vendor/k8s.io/apiextensions-apiserver/pkg/features:go_default_library",
        "//vendor/k8s.io/apimachinery/pkg/api/validation:go_default_library",
        "//vendor/k8s.io/apimachinery/pkg/util/sets:go_default_library",
        "//vendor/k8s.io/apimachinery/pkg/util/validation:go_default_library",
        "//vendor/k8s.io/apimachinery/pkg/util/validation/field:go_default_library",
        "//vendor/k8s.io/apiserver/pkg/util/feature:go_default_library",
    ],
)

go_test(
    name = "go_default_test",
    srcs = ["validation_test.go"],
    embed = [":go_default_library"],
    deps = [
        "//vendor/k8s.io/apiextensions-apiserver/pkg/apis/apiextensions:go_default_library",
        "//vendor/k8s.io/apimachinery/pkg/apis/meta/v1:go_default_library",
        "//vendor/k8s.io/apimachinery/pkg/util/validation/field:go_default_library",
    ],
)
