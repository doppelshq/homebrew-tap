# doppelshq/homebrew-tap

Homebrew cask for [Doppels](https://doppels.so).

```bash
brew tap doppelshq/tap
brew trust doppelshq/tap   # Homebrew 6+
brew install --cask doppels
```

Binary releases come from [`doppelshq/doppels`](https://github.com/doppelshq/doppels/releases).
GoReleaser updates `Casks/doppels.rb` on each tagged release.

Upgrade:

```bash
brew upgrade --cask doppels
```

## Migration from Formula

Earlier installs used a Formula under `Formula/doppels.rb`. After `brew update`,
Homebrew migrates via `tap_migrations.json`. If needed:

```bash
brew uninstall doppels
brew install --cask doppels
```

## Later: Homebrew core

When there is a **stable** (non-prerelease) release, open a PR to
[`Homebrew/homebrew-core`](https://github.com/Homebrew/homebrew-core) so users
can run `brew install doppels` with no tap. See Homebrew’s
[Adding Software](https://docs.brew.sh/Adding-Software-to-Homebrew) guide.
