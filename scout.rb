class Scout < Formula
  desc "Friendly fuzzy finder for your command line"
  homepage "https://github.com/jhbabon/scout"
  url "https://github.com/jhbabon/scout/archive/v2.5.1.tar.gz"
  sha256 "d1d1c0d92b0a252e014fb52837baed8541b0edb55f7ebf74e104d0b245f007a9"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"

    bin.install "target/release/scout"
  end

  test do
    system "#{bin}/scout", "--help"
  end
end
