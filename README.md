# Homebrew tap — Claude Notch

Personal Homebrew tap for [Claude Notch](https://github.com/arratiabenjamin/claude-notch),
a floating glass panel that surfaces Claude Code sessions on macOS.

## Install

```bash
brew tap arratiabenjamin/claude-notch
brew install --cask claude-notch
```

## Update

```bash
brew update
brew upgrade --cask claude-notch
```

## Uninstall

```bash
brew uninstall --cask claude-notch
```

To also remove preferences and caches, use `brew uninstall --zap --cask claude-notch`.

## Why a personal tap and not the official Homebrew Cask?

Official Homebrew Cask requires apps to be code-signed with an Apple
Developer ID and notarized. Claude Notch is not yet, so it lives in this
personal tap. Once a Developer ID is in place, the cask will be moved to
[homebrew-cask](https://github.com/Homebrew/homebrew-cask) for direct
`brew install --cask claude-notch` access (no tap step).

## First launch

macOS Gatekeeper will block the unsigned binary. Open it via:

```bash
open -a "Claude Notch"
```

or right-click the app in Finder and choose "Open".

## License

Cask formula: MIT (same as the app).
