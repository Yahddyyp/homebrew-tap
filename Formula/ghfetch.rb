class Ghfetch < Formula
  desc "Display your github status in a beautiful way"
  homepage "https://github.com/Yahddyyp/gh-fetch"
  url "https://github.com/Yahddyyp/gh-fetch/releases/download/v0.1.0/ghfetch-v0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "c48cca7ee3dfed12d1f1c41313aa991b0df05585767add5a0e2bb26f245855d5"
  version "1.0.0"

  def install
    bin.install "ghfetch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ghfetch --version")
  end
end
