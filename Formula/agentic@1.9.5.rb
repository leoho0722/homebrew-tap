class AgenticAT195 < Formula
  desc "CLI tool to monitor AI coding assistant usage"
  homepage "https://github.com/leoho0722/agentic-coding-usage-app"
  url "https://github.com/leoho0722/agentic-coding-usage-app/releases/download/v1.9.5/AgenticCLI-v1.9.5-arm64.zip"
  version "1.9.5"
  sha256 "302a3cf03ab77c62c74ab10c36ffceed98e001c5c4cc9baeb3555a005be2bd0a"
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
