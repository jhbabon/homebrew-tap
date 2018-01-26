class Scout < Formula
  desc "Small fuzzy finder for your command line"
  homepage "https://github.com/jhbabon/scout"
  url "https://github.com/jhbabon/scout/archive/v1.3.0.tar.gz"
  sha256 "2bdddd1b951f3abb8f177064d32f084c4fa80fb45f1494fea8a752831124a652"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"

    bin.install "target/release/scout"
  end

  test do
    system "#{bin}/scout", "--help"
  end
end
