# This file was generated by GoReleaser. DO NOT EDIT.
class Tldr < Formula
  desc "Simplified and community-driven man pages"
  homepage "https://github.com/eiladin/tldr"
  version "1.4.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/eiladin/tldr/releases/download/v1.4.6/tldr_1.4.6_macos_x64.tar.gz"
    sha256 "50775fa75c6bc85a75e8585ccd9ca783928c957181b661c8f3050e33a6c2850e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/eiladin/tldr/releases/download/v1.4.6/tldr_1.4.6_linux_x64.tar.gz"
      sha256 "2f5088a361ac463f160e6f6df2db269811ad60530d60e272ab2e8ad6450d1ee1"
    end
  end

  def install
    bin.install "tldr"
  end

  test do
    system "#{bin}/tldr --version"
  end
end
