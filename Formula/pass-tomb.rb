class PassTomb < Formula
  desc "The pass tomb extension for pass ported over to macos"
  homepage "https://github.com/Yahddyyp/pass-tomb-osx"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Yahddyyp/pass-tomb-osx/releases/download/v1.5.0/pass-tomb-v1.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "ca9245e2016e028f561bfdb3b37d72fb523c669aebd85eedc315bb2d68d53d59"
    end
    on_intel do
      url "https://github.com/Yahddyyp/pass-tomb-osx/releases/download/v1.5.0/pass-tomb-v1.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "9aa3e2272506c7b7a09197a7521e91240afeb18fc7bf1b5aa0510981a06da28a"
    end
  end

  depends_on "pass"

  def install
    bin.install "pass-tomb", "pass-open", "pass-close", "pass-timer"

    (share/"pass-extensions").mkpath

    %w[tomb open close timer].each do |cmd|
      (share/"pass-extensions/#{cmd}.bash").write <<~EOS
        #!/bin/bash
        exec "#{bin}/pass-#{cmd}" "$@"
      EOS

      chmod 0755, share/"pass-extensions/#{cmd}.bash"
    end
  end

  test do
    assert_match "pass-tomb", shell_output("#{bin}/pass-tomb --help")
  end
end
