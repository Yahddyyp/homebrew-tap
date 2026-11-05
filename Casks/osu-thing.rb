cask "osu-thing" do
  version "0.2.0"
  sha256 "c6aceea62205f2e02dd459c61f3c890786b5793ec89c58680ff3b1c730dfb747"

  url "https://github.com/Yahddyyp/osu-thing/releases/download/v#{version}/osu-thing-v#{version}.zip"
  name "osu! Trackpad Driver"
  desc "Absolute-position trackpad driver for osu!"
  homepage "https://github.com/Yahddyyp/osu-thing"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "osu-thing.app"
end
