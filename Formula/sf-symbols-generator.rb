class SfSymbolsGenerator < Formula
  desc "Swift-based command-line utility that generates type-safe Swift enumerations for SF Symbols"
  homepage "https://github.com/leoho0722/SFSymbolsGenerator"
  version "1.3.1"

  url "https://github.com/leoho0722/SFSymbolsGenerator/releases/download/1.3.1/sf-symbols-generator-1.3.1-macos.tar.gz"
  sha256 "1dd946be96e98c5f933be04a449d24ee34f833464bdbc0b9a68896bd2226d374"

  depends_on :macos

  def install
    bin.install "sf-symbols-generator"
  end

  test do
    system "#{bin}/sf-symbols-generator", "version"
  end
end
