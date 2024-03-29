This repository builds binary releases for bsdtar.

It's a workaround for https://github.com/libarchive/libarchive/releases not including
non-Windows binaries in the releases.

It is built using the Bazel module at https://registry.bazel.build/modules/libarchive
using a musl toolchain from https://registry.bazel.build/modules/hermetic_cc_toolchain
so it is fully statically-linked and does not depend on any libc version at runtime.

To use this binary under Bazel, see https://docs.aspect.build/rulesets/aspect_bazel_lib/docs/tar/.

## Attribution

All the work for the libarchive entry on the Bazel registry as well as this publish repo
is thanks to @dzbarsky.

## Releasing

1. MODULE.bazel should point to the latest libarchive on Bazel Central Registry.
   Renovate bot will send a PR.
2. Push a tag to the repo, will kick off automated build on GitHub Actions.
