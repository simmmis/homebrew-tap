class Uncut < Formula
  desc "Uncut CLI"
  homepage "https://github.com/simmmis/uncut"
  version "0.1.4"

  if Hardware::CPU.arm?
    url "https://github.com/simmmis/uncut/releases/download/v0.1.4/uncut-darwin-arm64.tar.gz"
    sha256 "610e8a99049d894c7f601d12fd1ccf35b891e188cd29d6bb831c6c1605330319"
  else
    url "https://github.com/simmmis/uncut/releases/download/v0.1.4/uncut-darwin-amd64.tar.gz"
    sha256 "de6863375e0e8721a36639e3f7693254cea1a209dfc583603ad2eed0ce0683b9"
  end

  def install
    bin.install "uncut"
    man1.install "man/uncut.1"
    doc.install "README.md", "METHODS.md", "docs"
  end

  test do
    system "#{bin}/uncut", "--version"
    system "#{bin}/uncut", "docs", "--list"
  end
end
