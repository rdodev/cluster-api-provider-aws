load("@io_bazel_rules_go//go:def.bzl", "go_library")

go_library(
    name = "go_default_library",
    srcs = [
        "cluster.go",
        "interface.go",
        "machine.go",
        "machinedeployment.go",
        "machineset.go",
    ],
    importmap = "sigs.k8s.io/cluster-api-provider-aws/vendor/sigs.k8s.io/cluster-api/pkg/client/informers_generated/externalversions/cluster/v1alpha1",
    importpath = "sigs.k8s.io/cluster-api/pkg/client/informers_generated/externalversions/cluster/v1alpha1",
    visibility = ["//visibility:public"],
    deps = [
        "//vendor/k8s.io/apimachinery/pkg/apis/meta/v1:go_default_library",
        "//vendor/k8s.io/apimachinery/pkg/runtime:go_default_library",
        "//vendor/k8s.io/apimachinery/pkg/watch:go_default_library",
        "//vendor/k8s.io/client-go/tools/cache:go_default_library",
        "//vendor/sigs.k8s.io/cluster-api/pkg/apis/cluster/v1alpha1:go_default_library",
        "//vendor/sigs.k8s.io/cluster-api/pkg/client/clientset_generated/clientset:go_default_library",
        "//vendor/sigs.k8s.io/cluster-api/pkg/client/informers_generated/externalversions/internalinterfaces:go_default_library",
        "//vendor/sigs.k8s.io/cluster-api/pkg/client/listers_generated/cluster/v1alpha1:go_default_library",
    ],
)
