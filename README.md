This repository builds a statically linked bsdtar.

# Releasing

1. MODULE.bazel should point to the latest libarchive on Bazel Central Registry.
   Renovate bot will send a PR.
2. Push a tag to the repo, will kick off automated build on GitHub Actions.
