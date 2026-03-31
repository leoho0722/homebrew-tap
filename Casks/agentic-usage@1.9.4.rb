cask "agentic-usage@1.9.4" do
  version "1.9.4"
  sha256 "0718de2c6ecc37441aa37c15328889019ad8e4d9de4bf581a9f3095918be6de6"

  url "https://github.com/leoho0722/agentic-coding-usage-app/releases/download/v#{version}/AgenticUsage-v#{version}.zip"
  name "AgenticUsage"
  desc "macOS menu bar app to monitor AI coding assistant usage"
  homepage "https://github.com/leoho0722/agentic-coding-usage-app"

  depends_on macos: ">= :sequoia"

  app "AgenticUsage.app"


  caveats <<~EOS
    #{token} is not code-signed. On first launch, right-click the app
    and select "Open" to bypass Gatekeeper.
  EOS

  zap trash: [
    "~/Library/Preferences/com.leoho.AgenticUsage.plist",
    "~/Library/Application Support/com.leoho.AgenticUsage",
  ]
end
