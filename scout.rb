class Scout < Formula
  desc "Friendly fuzzy finder for your command line"
  homepage "https://github.com/jhbabon/scout"
  url "https://github.com/jhbabon/scout/archive/v2.2.0.tar.gz"
  sha256 "52f7ac031e8b98bc6007765c0af781211f82da037f24eb06531a2ad508f6007"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"

    bin.install "target/release/scout"
  end

  test do
    system "#{bin}/scout", "--help"
  end
end
