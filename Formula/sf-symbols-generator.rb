class SfSymbolsGenerator < Formula
  desc "Swift-based command-line utility that generates type-safe Swift enumerations for SF Symbols"
  homepage "https://github.com/leoho0722/SFSymbolsGenerator"
  version "1.3.0"
  
  if Hardware::CPU.arm?
    url "https://github.com/leoho0722/SFSymbolsGenerator/releases/download/1.3.0/sf-symbols-generator-1.3.0-macos.tar.gz"
    sha256 "ebfb654a47c1494ef90818daa1bd4a0d97046ad2e5aa4a23676b96b252bc9cf3"
  else
    url "https://github.com/leoho0722/SFSymbolsGenerator/releases/download/1.3.0/sf-symbols-generator-1.3.0-macos.tar.gz"
    sha256 "ebfb654a47c1494ef90818daa1bd4a0d97046ad2e5aa4a23676b96b252bc9cf3"
  end

  depends_on :macos
  depends_on arch: :x86_64_or_arm64

  def install
    bin.install "sf-symbols-generator"
  end

  test do
    system "#{bin}/sf-symbols-generator", "version"
  end
end
