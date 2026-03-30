class AgenticAT193 < Formula
  desc "CLI tool to monitor AI coding assistant usage"
  homepage "https://github.com/leoho0722/agentic-coding-usage-app"
  url "https://github.com/leoho0722/agentic-coding-usage-app/releases/download/v1.9.3/AgenticCLI-v1.9.3-arm64.zip"
  version "1.9.3"
  sha256 "e55b92d2ea3427948bdc75123d1c8d090716705c0b700d102d1853ba4c130adf"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  def install
    bin.install "agentic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentic --version")
  end
end
