class Scout < Formula
  desc "Friendly fuzzy finder for your command line"
  homepage "https://github.com/jhbabon/scout"
  url "https://github.com/jhbabon/scout/archive/v2.3.0.tar.gz"
  sha256 "a443f3c4a477ac0f7bd03cdd064a549380d8094223e81304d4acb798c2b3ac0f"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"

    bin.install "target/release/scout"
  end

  test do
    system "#{bin}/scout", "--help"
  end
end
