<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://shyn.day/assets/logo-dark.svg">
  <img src="https://shyn.day/assets/logo.svg" alt="shyn" width="240">
</picture>

# homebrew-tap

The Homebrew tap for [shyn](https://shyn.day) — a register of your days.

```
brew install --cask shyn-labs/tap/shyn
shyn setup
```

Requirements: macOS on Apple Silicon. Pre-alpha; the cask's caveats carry the
honest fine print (self-signed builds re-signed locally by `shyn setup`,
sha256 is the integrity story, nothing phones home — ever).

Upgrades: `brew upgrade shyn && shyn setup` (permission grants persist).
Uninstall: `shyn uninstall [--purge]`, then `brew uninstall shyn`.

Questions or a broken install? `shyn diagnose --mail` opens an email to
hello@shyn.day with a content-free report.
