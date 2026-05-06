cask "claude-notch" do
  version "2.7.0"
  sha256 "e7e401b18e244c0d9a614b6b034199161571c566bcdab55ac40d2b3eca1c99ad"

  url "https://github.com/arratiabenjamin/claude-notch/releases/download/v#{version}/ClaudeNotch-v#{version}.zip"
  name "Claude Notch"
  desc "Floating panel that surfaces Claude Code sessions on macOS"
  homepage "https://github.com/arratiabenjamin/claude-notch"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Claude Notch.app"

  uninstall quit: "com.velion.claude-notch"

  zap trash: [
    "~/Library/Preferences/com.velion.claude-notch.plist",
    "~/Library/Application Support/Claude Notch",
    "~/Library/Caches/com.velion.claude-notch",
    "~/Library/HTTPStorages/com.velion.claude-notch",
    "~/Library/WebKit/com.velion.claude-notch",
  ]

  caveats <<~EOS
    Claude Notch is distributed without an Apple Developer ID signature.
    macOS Gatekeeper will block the first launch.

    To open it the first time:
      open -a "Claude Notch"
    or right-click the app in Finder and choose "Open".

    Subsequent updates install automatically via Sparkle — the app checks
    the appcast every 24h and prompts to install. You can also trigger a
    check manually from the menubar → "Check for Updates…".

    Pair with the Velion screensaver bundle:
      https://github.com/arratiabenjamin/claude-notch/releases/latest

    See the README for the full install + setup walkthrough.
  EOS
end
