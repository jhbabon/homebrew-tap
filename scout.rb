class Scout < Formula
  desc 'Friendly fuzzy finder for your command line'
  homepage 'https://github.com/jhbabon/scout'
  url 'https://github.com/jhbabon/scout/archive/v2.8.0.tar.gz'
  sha256 '021e88692ab8b16672e26bb9ef24bfe70c98f3e8be16e39baf0064a2d81ad9f6'

  depends_on 'rust' => :build

  def install
    system 'cargo', 'build', '--release'

    bin.install 'target/release/scout'
  end

  test do
    system "#{bin}/scout", '--help'
  end
end
