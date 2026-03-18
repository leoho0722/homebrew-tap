class Agentic < Formula
  desc "CLI tool to monitor AI coding assistant usage (Copilot, Claude, Codex, Antigravity)"
  homepage "https://github.com/leoho0722/agentic-coding-usage-app"
  version "1.9.3"
  license "MIT"

  url "https://github.com/leoho0722/agentic-coding-usage-app/releases/download/v#{version}/AgenticCLI-v#{version}-arm64.zip"
  sha256 "e55b92d2ea3427948bdc75123d1c8d090716705c0b700d102d1853ba4c130adf"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  def install
    bin.install "agentic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentic --version")
  end
end
