set -o errexit -o nounset -o xtrace

bazel build //:for_all_platforms

mv bazel-out/darwin_arm64-opt/bin/external/libarchive\~/tar/tar tar_darwin_arm64
mv bazel-out/darwin_amd64-opt/bin/external/libarchive\~/tar/tar tar_darwin_amd64
mv bazel-out/linux_arm64_musl-opt/bin/external/libarchive\~/tar/tar tar_linux_arm64
mv bazel-bin/external/libarchive\~/tar/tar  tar_linux_amd64

shasum -a 256 tar* > SHA256.txt
