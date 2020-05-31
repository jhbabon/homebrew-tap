class Scout < Formula
  desc "Friendly fuzzy finder for your command line"
  homepage "https://github.com/jhbabon/scout"
  url "https://github.com/jhbabon/scout/archive/v2.1.0.tar.gz"
  sha256 "31449665e188345a6f8d17b6b19df616536e156c19ba101f4e76bc9f80177ade"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"

    bin.install "target/release/scout"
  end

  test do
    system "#{bin}/scout", "--help"
  end
end
