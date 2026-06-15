class Uncut < Formula
  desc "Uncut CLI"
  homepage "https://github.com/simmmis/uncut"
  version "0.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/simmmis/uncut/releases/download/v0.1.0/uncut-darwin-arm64.tar.gz"
    sha256 "4f3ed5e35ba34c8f9f7820a506ed34ec343fab5b87a636cf459138b1811d76ba"
  else
    url "https://github.com/simmmis/uncut/releases/download/v0.1.0/uncut-darwin-amd64.tar.gz"
    sha256 "7db0b27b09ea4cc31a73e9a0f331fa2c4b15c79ae49198c696a649c4dfaf1024"
  end

  def install
    bin.install "uncut"
  end

  test do
    system "#{bin}/uncut", "--version"
  end
end
