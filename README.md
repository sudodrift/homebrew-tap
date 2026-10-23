# homebrew-tap

Homebrew tap for [sudodrift](https://github.com/sudodrift/sudodrift).

```sh
brew install sudodrift/tap/sudodrift
```

sudodrift only runs on Linux. The formula has Linux blocks only, so on macOS the install will not work. I did not want to ship a formula that pretends otherwise.

It installs the prebuilt static binary from the GitHub release and checks the sha256 from the release's SHA256SUMS file. When there is a new release I update the version and the two hashes by hand.
