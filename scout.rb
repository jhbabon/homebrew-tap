class Scout < Formula
  desc 'Friendly fuzzy finder for your command line'
  homepage 'https://github.com/jhbabon/scout'
  url 'https://github.com/jhbabon/scout/archive/v2.6.0.tar.gz'
  sha256 'ce7683a3e29dba1ded2e7497bf32c3c3d9a697f6c0f8cde8fa19dce9e4bb38df'

  depends_on 'rust' => :build

  def install
    system 'cargo', 'build', '--release'

    bin.install 'target/release/scout'
  end

  test do
    system "#{bin}/scout", '--help'
  end
end
