# Rendered by scripts/release.sh — do not edit in the tap repo by hand.
# 0.3.0-alpha / 1d4a7a301f5a02b524ba1e98c11928091fe4cbd8a994518ee177718343d628d5 / vish-al/homebrew-shyn are substituted at release time.
cask "shyn" do
  version "0.3.0-alpha"
  sha256 "1d4a7a301f5a02b524ba1e98c11928091fe4cbd8a994518ee177718343d628d5"

  url "https://github.com/vish-al/homebrew-shyn/releases/download/v#{version}/shyn-v#{version}-darwin-arm64.tar.gz"
  name "shyn"
  desc "Local-first memory companion for MCP AI assistants (pre-alpha, Apple Silicon)"
  homepage "https://theshyn.com"

  depends_on arch: :arm64

  binary "shyn/bin/shyn"

  caveats <<~EOS
    Run once to install the daemon, capture agents, and menu bar app:
      shyn setup

    The honest fine print:
    - Integrity comes from this cask's sha256 (verified by Homebrew), not
      from the code signature. `shyn setup` mints a signing identity ON
      YOUR MACHINE purely so macOS permission grants survive upgrades.
    - setup clears the download quarantine (bypasses Gatekeeper's
      notarization check) with your consent — this is an unsigned
      pre-alpha dev build.
    - Corporate EDR (e.g. SentinelOne) may quarantine fresh binaries; an
      exclusion for ~/Library/Application Support/shyn may be needed.
    - Everything shyn captures stays on your Mac. Nothing phones home.

    After upgrades, re-run: shyn setup   (grants persist)
    Uninstall: shyn uninstall [--purge], then brew uninstall shyn
  EOS
end
