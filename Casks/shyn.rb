# Rendered by scripts/release.sh — do not edit in the tap repo by hand.
# 0.4.10-alpha / 25134172a09e319c88d228fd30689aa9dcda788f5cc6093b4023a737fd1a50b3 / shyn-labs/homebrew-tap are substituted at release time.
cask "shyn" do
  version "0.4.10-alpha"
  sha256 "25134172a09e319c88d228fd30689aa9dcda788f5cc6093b4023a737fd1a50b3"

  url "https://github.com/shyn-labs/homebrew-tap/releases/download/v#{version}/shyn-v#{version}-darwin-arm64.tar.gz"
  name "shyn"
  desc "Local-first memory companion for MCP AI assistants (pre-alpha, Apple Silicon)"
  homepage "https://shyn.day"

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
    - macOS lists the daemon's background item as "Node.js Foundation" —
        that is shyn's bundled Node runtime (official nodejs.org build,
        sha-verified), not third-party software.
      - Corporate EDR (e.g. SentinelOne) may quarantine fresh binaries; an
      exclusion for ~/Library/Application Support/shyn may be needed.
    - Everything shyn captures stays on your Mac. Nothing phones home.

    After upgrades, re-run: shyn setup   (grants persist)
    Uninstall: shyn uninstall [--purge], then brew uninstall shyn
  EOS
end
