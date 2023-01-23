class Scout < Formula
  desc 'Friendly fuzzy finder for your command line'
  homepage 'https://github.com/jhbabon/scout'
  url 'https://github.com/jhbabon/scout/archive/v2.7.0.tar.gz'
  sha256 'd0e8895475132c293170a5dcfcad6eb991a2db4698758245cff9f5829de84dd6'

  depends_on 'rust' => :build

  def install
    system 'cargo', 'build', '--release'

    bin.install 'target/release/scout'
  end

  test do
    system "#{bin}/scout", '--help'
  end
end
