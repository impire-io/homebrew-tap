# impire-io/homebrew-tap

The Homebrew tap for [impire.io](https://github.com/impire-io) tools.

| Tool | Install | What it is |
| --- | --- | --- |
| [Soulstream](https://github.com/impire-io/soulstream) | `brew install impire-io/tap/soulstream` | Your realm in one binary — the Soulstream node |
| [HITS](https://github.com/impire-io/hits) | `brew install impire-io/tap/hits` | Headless, agent-native issue tracking (`hits` + `hits-mcp`) |

Each install is the whole thing: current pre-release, macOS and Linux,
amd64 and arm64. Then:

```sh
soulstream init   # founds your realm — prints your token once
soulstream up     # serves it
```

```sh
nats context save hits --server nats://localhost:4222
hits up --context hits   # the whole fleet in one process
```

Formulas here are written by each project's release pipeline
(goreleaser, tag-triggered) — pre-releases included, deliberately:
pre-v1, the candidates are the releases. Hand-edits get overwritten by
the next release.

Docs: [Soulstream getting started](https://github.com/impire-io/soulstream/blob/main/docs/getting-started.md)
· [HITS getting started](https://github.com/impire-io/hits/blob/main/README.md).
