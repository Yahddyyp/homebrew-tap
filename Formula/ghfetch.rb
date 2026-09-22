class Ghfetch < Formula
  desc "Display your github status in a beautiful way"
  homepage "https://github.com/Yahddyyp/gh-fetch"
  url "https://github.com/Yahddyyp/ghfetch/releases/download/v1.0.1/ghfetch-v1.0.1-aarch64-apple-darwin.tar.gz"
  sha256 "56ffa9be0a19b4df5e199c8f5f865128ec12eefe64464be93b94f25d7d6fe4c2"
  version "1.0.0"

  def install
    bin.install "ghfetch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ghfetch --version")
  end
end
