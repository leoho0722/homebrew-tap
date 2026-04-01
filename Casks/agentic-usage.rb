cask "agentic-usage" do
  version "1.9.6"
  sha256 "d1a9a83a69d4cb1e5cd5d6f2160fbfc2b3c869e3d01e08fdbb2a79ad12e2c064"

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
