class Uncut < Formula
  desc "Uncut CLI"
  homepage "https://github.com/simmmis/uncut"
  version "0.1.1"

  if Hardware::CPU.arm?
    url "https://github.com/simmmis/uncut/releases/download/v0.1.1/uncut-darwin-arm64.tar.gz"
    sha256 "d4e4711b96af6858034161fa653fc0c4ad2d421a91625d17c1b8c33808ff268d"
  else
    url "https://github.com/simmmis/uncut/releases/download/v0.1.1/uncut-darwin-amd64.tar.gz"
    sha256 "b06ff8e05f0ee9432e6c3eb57629b1ed7d8ce144cc04209cb4bf34af7a4e3243"
  end

  def install
    bin.install "uncut"
  end

  test do
    system "#{bin}/uncut", "--version"
  end
end
