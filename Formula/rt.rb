class Rt < Formula
  desc "rt is a small commandline tool which helps managing your daily commands."
  url "https://github.com/Raydieserl/rt/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "1d24c52f50b08be8a1dcd2e6f9568ce332f5512e81d2bcf7b4d620f35fbbf96a"
  depends_on "rust"
  def install
    system "mkdir -p /usr/local/Cellar/rt/1.0.0/bin"
    system "cargo build --release"
    system "cp target/release/rt /usr/local/Cellar/rt/1.0.0/bin/rt"
  end
end