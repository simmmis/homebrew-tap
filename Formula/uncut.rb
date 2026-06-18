class Uncut < Formula
  desc "Uncut CLI"
  homepage "https://github.com/simmmis/uncut"
  version "0.1.3"

  if Hardware::CPU.arm?
    url "https://github.com/simmmis/uncut/releases/download/v0.1.3/uncut-darwin-arm64.tar.gz"
    sha256 "a9cf17de8fa15299d863c9808de8a14a6c6d1e044b272fccddfcd60fabdbed23"
  else
    url "https://github.com/simmmis/uncut/releases/download/v0.1.3/uncut-darwin-amd64.tar.gz"
    sha256 "b2f5abb942413d0c820ad72bcc58dde0fe137d96e1df25a52cd8c6cc5dbb0276"
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
