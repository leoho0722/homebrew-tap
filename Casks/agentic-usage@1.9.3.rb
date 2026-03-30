cask "agentic-usage@1.9.3" do
  version "1.9.3"
  sha256 "424559bfe7b0e5700101509ad65e656147c5b40664484fa8ce6306a00b94f933"

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
