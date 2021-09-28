class Scout < Formula
  desc "Friendly fuzzy finder for your command line"
  homepage "https://github.com/jhbabon/scout"
  url "https://github.com/jhbabon/scout/archive/v2.5.1.tar.gz"
  sha256 "cc986c1a3bf608ff7ee277d92565ee29e5d634c0c7ec4258f2131786d488a7f3"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"

    bin.install "target/release/scout"
  end

  test do
    system "#{bin}/scout", "--help"
  end
end
