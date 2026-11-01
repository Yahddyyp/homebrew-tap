class Ghfetch < Formula
  desc "Display your GitHub status in a beautiful way"
  homepage "https://github.com/Yahddyyp/ghfetch"

  on_macos do
    on_arm do
      url "https://github.com/Yahddyyp/ghfetch/releases/download/v1.2.0/ghfetch-v1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "511127931803689e008c870da6c765dce63f1d870a9444439aadb9a882df6f68"
    end

    on_intel do
      url "https://github.com/Yahddyyp/ghfetch/releases/download/v1.2.0/ghfetch-v1.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f61cf43e8707cc136c69fc86636f14e439266627ae86c3eea0da2d63dc54f576"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Yahddyyp/ghfetch/releases/download/v1.2.0/ghfetch-v1.2.0-linux-aarch64.tar.gz"
      sha256 "aac265730709727d6333adb8c7d079aec0aa2ad2d4569bd6fd221b7f10842025"
    end

    on_intel do
      url "https://github.com/Yahddyyp/ghfetch/releases/download/v1.2.0/ghfetch-v1.2.0-linux-x86_64.tar.gz"
      sha256 "cf906016a2b2113f08bc32492061a40d3cfeaa7f670923df939c1081460f6f79"
    end
  end

  def install
    bin.install "ghfetch"
  end

  test do
    assert_match "1.2.0", shell_output("#{bin}/ghfetch --version")
  end
end
