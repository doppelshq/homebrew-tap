# doppelshq/homebrew-tap

Homebrew formulae for [Doppels](https://doppels.so).

```bash
brew tap doppelshq/tap
brew trust doppelshq/tap   # Homebrew 6+
brew install doppels
```

Binary releases come from [`doppelshq/doppels`](https://github.com/doppelshq/doppels/releases).
Current formula tracks a pipeline prerelease until a stable tag lands.

## Later: Homebrew core

When there is a **stable** (non-prerelease) release, open a PR to
[`Homebrew/homebrew-core`](https://github.com/Homebrew/homebrew-core) so users
can run `brew install doppels` with no tap. See Homebrew’s
[Adding Software](https://docs.brew.sh/Adding-Software-to-Homebrew) guide.
