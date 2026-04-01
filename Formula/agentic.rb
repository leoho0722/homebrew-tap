class Agentic < Formula
  desc "CLI tool to monitor AI coding assistant usage"
  homepage "https://github.com/leoho0722/agentic-coding-usage-app"
  url "https://github.com/leoho0722/agentic-coding-usage-app/releases/download/v1.9.7/AgenticCLI-v1.9.7-arm64.zip"
  version "1.9.7"
  sha256 "c3f6f6c9b5a1288d3be9f0aefff772c3bfaa5b24a3ea1cbcff4ac1bc193d710b"
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
