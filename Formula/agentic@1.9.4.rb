class AgenticAT194 < Formula
  desc "CLI tool to monitor AI coding assistant usage"
  homepage "https://github.com/leoho0722/agentic-coding-usage-app"
  url "https://github.com/leoho0722/agentic-coding-usage-app/releases/download/v1.9.4/AgenticCLI-v1.9.4-arm64.zip"
  version "1.9.4"
  sha256 "d1dc6e298922b36e4ce602a6945b104d7bb3309f2935ccf2e0bf00821e0b52a6"
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
