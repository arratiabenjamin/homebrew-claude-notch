cask "claude-notch" do
  version "2.6.0"
  sha256 "325b7228646d112e84639e4cc3d08aec9f2725d746680df65d1ef53f5211c320"

  url "https://github.com/arratiabenjamin/claude-notch/releases/download/v#{version}/ClaudeNotch-v#{version}.zip",
      verified: "github.com/arratiabenjamin/claude-notch/"
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
    Claude Notch is currently distributed without an Apple Developer ID
    signature. macOS Gatekeeper will block the first launch.

    To open it the first time:
      open -a "Claude Notch"
    or right-click the app in Finder and choose "Open".

    Pair with the Velion screensaver bundle:
      https://github.com/arratiabenjamin/claude-notch/releases/latest

    See the README for the full install + setup walkthrough.
  EOS
end
