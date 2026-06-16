class Uncut < Formula
  desc "Uncut CLI"
  homepage "https://github.com/simmmis/uncut"
  version "0.1.2"

  if Hardware::CPU.arm?
    url "https://github.com/simmmis/uncut/releases/download/v0.1.2/uncut-darwin-arm64.tar.gz"
    sha256 "6fc2a54a0bb174a928bb75dd4709048a1ee98942645f967f38c55d4e24693f05"
  else
    url "https://github.com/simmmis/uncut/releases/download/v0.1.2/uncut-darwin-amd64.tar.gz"
    sha256 "8c4ff2aaf1d57ff7d25b76c16ef77ee51b86c7511da731a588c6991b06bedf1c"
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
