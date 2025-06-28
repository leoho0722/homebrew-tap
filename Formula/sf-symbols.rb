class SfSymbols < Formula
  desc "Swift-based command-line utility that generates type-safe Swift enumerations for SF Symbols"
  homepage "https://github.com/leoho0722/SFSymbolsGenerator"
  version "1.3.0"
  
  if Hardware::CPU.arm?
    url "https://github.com/leoho0722/SFSymbolsGenerator/releases/download/1.3.0/sf-symbols-1.3.0-macos.tar.gz"
    sha256 "2d737da6b514716919abb2ec59a7d19a92e77371c3c8cb25352263611f8656e7"
  else
    url "https://github.com/leoho0722/SFSymbolsGenerator/releases/download/1.3.0/sf-symbols-1.3.0-macos.tar.gz"
    sha256 "2d737da6b514716919abb2ec59a7d19a92e77371c3c8cb25352263611f8656e7"
  end

  depends_on :macos
  depends_on arch: :x86_64_or_arm64

  def install
    bin.install "sf-symbols"
  end

  test do
    system "#{bin}/sf-symbols", "version"
  end
end
