class Agentic < Formula
  desc "CLI tool to monitor AI coding assistant usage"
  homepage "https://github.com/leoho0722/agentic-coding-usage-app"
  url "https://github.com/leoho0722/agentic-coding-usage-app/releases/download/v1.9.9/AgenticCLI-v1.9.9-arm64.zip"
  version "1.9.9"
  sha256 "79eefeef9833c6b68eaf545ad27072c8258301acfc9d68f666ff35ab8d0db0ae"
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
