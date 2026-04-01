class Agentic < Formula
  desc "CLI tool to monitor AI coding assistant usage"
  homepage "https://github.com/leoho0722/agentic-coding-usage-app"
  url "https://github.com/leoho0722/agentic-coding-usage-app/releases/download/v1.9.8/AgenticCLI-v1.9.8-arm64.zip"
  version "1.9.8"
  sha256 "f6f8f9883f21a4681b21cec03dbcfa082e8069cf9175a64a4298c6714fb89254"
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
