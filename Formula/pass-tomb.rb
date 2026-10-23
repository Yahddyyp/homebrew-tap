class PassTomb < Formula
  desc "Extension for pass to keep secrets inside an encrypted macOS DMG"
  homepage "https://github.com/Yahddyyp/pass-tomb-osx"
  if Hardware::CPU.arm?
    url "https://github.com/Yahddyyp/pass-tomb-osx/releases/download/v1.5.0/pass-tomb-v1.5.0-aarch64-apple-darwin.tar.gz"
    sha256 "ca9245e2016e028f561bfdb3b37d72fb523c669aebd85eedc315bb2d68d53d59"
  else
    url "https://github.com/Yahddyyp/pass-tomb-osx/releases/download/v1.5.0/pass-tomb-v1.5.0-x86_64-apple-darwin.tar.gz"
    sha256 "9aa3e2272506c7b7a09197a7521e91240afeb18fc7bf1b5aa0510981a06da28a"
  end

  depends_on :macos
  depends_on "pass"

  def install
    bin.install "pass-tomb", "pass-open", "pass-close", "pass-timer"
  end

  test do
    assert_match "pass-tomb", shell_output("#{bin}/pass-tomb --help")
  end
end
