# impire-io/homebrew-tap

The Homebrew tap for the [Soulstream](https://github.com/impire-io/soulstream)
ecosystem.

```sh
brew install impire-io/tap/soulstream
```

That's the whole install: the `soulstream` binary, current pre-release,
macOS and Linux, amd64 and arm64. Then:

```sh
soulstream init   # founds your realm — prints your token once
soulstream up     # serves it
```

Formulas here are written by the release pipeline
([goreleaser](https://github.com/impire-io/soulstream/blob/main/.goreleaser.yaml),
tag-triggered) — pre-releases included, deliberately: pre-v1, the
candidates are the releases. Hand-edits get overwritten by the next
release.

Docs: [getting started](https://github.com/impire-io/soulstream/blob/main/docs/getting-started.md).
