class PassTomb < Formula
  desc "The pass-tomb extension for macOS"
  homepage "https://github.com/Yahddyyp/pass-tomb-osx"
  version "1.0.0"
  url "https://github.com/Yahddyyp/pass-tomb-osx.git",
    tag: "v#{version}"
  license "MIT"
  head "https://github.com/Yahddyyp/pass-tomb-osx.git", branch: "main"

  depends_on "gnupg"
  depends_on "rust" => :build
  depends_on "pass"

  def install
    system "cargo", "install", *std_cargo_args

    (share/"pass-extensions").mkpath

    %w[tomb open close timer].each do |cmd|
      (share/"pass-extensions/#{cmd}.bash").write <<~EOS
        #!/bin/bash

        exec "#{bin}/pass-#{cmd}" "$@"
      EOS

      chmod 0755, share/"pass-extensions/#{cmd}.bash"
    end
  end
end
