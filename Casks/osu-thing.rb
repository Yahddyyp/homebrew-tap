cask "osu-thing" do
  version "0.1.0"
  sha256 "420e940d3c2ee5b883e8e94fe98c519de1d76bad66ca2338445410105f8e86af"

  url "https://github.com/Yahddyyp/osu-thing/releases/download/v#{version}/osu-thing.zip"

  name "osu! Trackpad Driver"
  desc "Absolute-position trackpad driver for osu!"
  homepage "https://github.com/Yahddyyp/osu-thing"

  app "osu-thing.app"
end
