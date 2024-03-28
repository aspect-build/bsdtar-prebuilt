load("@aspect_bazel_lib//lib:transitions.bzl", "platform_transition_filegroup")

PLATFORMS = [
    "@zig_sdk//platform:darwin_amd64",
    "@zig_sdk//platform:darwin_arm64",
    "@zig_sdk//libc_aware/platform:linux_arm64_musl",
    "@zig_sdk//libc_aware/platform:linux_amd64_musl",
]

[
    platform_transition_filegroup(
        name = "for_" + platform.split(":")[1],
        srcs = ["@libarchive//tar"],
        target_platform = platform,
    )
    for platform in PLATFORMS
]

filegroup(
    name = "for_all_platforms",
    srcs = ["for_" + platform.split(":")[1] for platform in PLATFORMS],
)
