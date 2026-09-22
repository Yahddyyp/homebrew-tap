class Ghfetch < Formula
  desc "Display your github status in a beautiful way"
  homepage "https://github.com/Yahddyyp/gh-fetch"
  url "https://github.com/Yahddyyp/ghfetch/releases/download/v0.1.0/ghfetch-v1.0.0-aarch64-apple-darwin.tar.gz"
  sha256 "9589b8914beb637c485dd363a75dcdf7fb3c764812ee1db54a3b6b39728a8ed5"
  version "1.0.0"

  def install
    bin.install "ghfetch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ghfetch --version")
  end
end
