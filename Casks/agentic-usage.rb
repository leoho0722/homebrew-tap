cask "agentic-usage" do
  version "1.9.5"
  sha256 "466e89c4e56ca26068c61fb58207374723f53809abcb55fce75b68bc11e57fdf"

  url "https://github.com/leoho0722/agentic-coding-usage-app/releases/download/v#{version}/AgenticUsage-v#{version}.zip"
  name "AgenticUsage"
  desc "macOS menu bar app to monitor AI coding assistant usage"
  homepage "https://github.com/leoho0722/agentic-coding-usage-app"

  depends_on macos: ">= :sequoia"

  app "AgenticUsage.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  caveats <<~EOS
    #{token} is not code-signed. On first launch, right-click the app
    and select "Open" to bypass Gatekeeper.
  EOS

  zap trash: [
    "~/Library/Preferences/com.leoho.AgenticUsage.plist",
    "~/Library/Application Support/com.leoho.AgenticUsage",
  ]
end
