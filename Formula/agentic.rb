class Agentic < Formula
  desc "CLI tool to monitor AI coding assistant usage"
  homepage "https://github.com/leoho0722/agentic-coding-usage-app"
  url "https://github.com/leoho0722/agentic-coding-usage-app/releases/download/v1.9.6/AgenticCLI-v1.9.6-arm64.zip"
  version "1.9.6"
  sha256 "0563548e31de85dc315abf5b3ee7ecf72553609e205b1aaa81489cb9e4638bd5"
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
