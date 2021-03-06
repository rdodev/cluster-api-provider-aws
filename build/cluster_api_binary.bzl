# Copyright 2018 The Kubernetes Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This is a modified version of the same rule from kubernetes/repo-infra
# modified to add the GO SDK to the PATH environment variable.

# Writes out a script which saves the runfiles directory,
# changes to the workspace root, and then runs a command.

load("@io_bazel_rules_docker//go:image.bzl", "go_image")
load("@io_bazel_rules_docker//container:push.bzl", "container_push")
load("@io_bazel_rules_docker//contrib:push-all.bzl", "docker_push")
load("@io_bazel_rules_docker//container:container.bzl", "container_bundle")

def cluster_api_binary(name):
    go_image(
        name = name + "-amd64",
        base = "@golang-image//image",
        embed = [":go_default_library"],
        goarch = "amd64",
        goos = "linux",
        # goos = select(
        #   "@io_bazel_rules_go//go/platform:linux": "linux",
        #   "//conditions:default": fail("only building on Linux supported. Try again with --platforms=@io_bazel_rules_go//go/toolchain:linux_amd64 ")
        # )
        pure = "on",
    )

    tags = [
        "{GIT_COMMIT}",
        "{GIT_VERSION}",
        "{BUILD_TIMESTAMP}",
        "latest",
    ]

    container_bundle(
        name = name + "-image",
        images = {
            "{registry}/aws-{name}:{tag}".format(
                registry = "$(STABLE_DOCKER_REPO)",
                name = name,
                tag = tag,
            ): ":{name}-amd64".format(name = name)
            for tag in tags
        },
        stamp = True,
        tags = ["manual"],
        visibility = ["//visibility:public"],
    )

    docker_push(
        name = name + "-push-dev",
        bundle = ":{name}-image-dev".format(name = name),
        tags = ["manual"],
    )

    container_bundle(
        name = name + "-image-dev",
        images = {
            "{registry}/aws-{name}:{tag}".format(
                registry = "$(DEV_DOCKER_REPO)",
                name = name,
                tag = tag,
            ): ":{name}-amd64".format(name = name)
            for tag in tags
        },
        stamp = True,
        tags = ["manual"],
        visibility = ["//visibility:public"],
    )

    docker_push(
        name = name + "-push",
        bundle = ":{name}-image".format(name = name),
        tags = ["manual"],
    )
