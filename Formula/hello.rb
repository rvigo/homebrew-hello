class Hello < Formula
  desc "hello app"
  homepage "https://github.com/rvigo/hello"
  version "1.6.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rvigo/hello/releases/download/v1.6.2/hello-aarch64-apple-darwin.zip"
      sha256 "d3fc661835263fd2ed4f903e8b416f2492344c9be8695ce08b59bcdb69f756ac"
    end 
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/hello/releases/download/v1.6.2/hello-x86_64-apple-darwin.zip"
      sha256 "446045424517ccac1d035bae5221a731f4918d1159f3b8798e7d4dffd35adaed"
    end 
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rvigo/hello/releases/download/v1.6.2/hello-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c99210787e4f7b0a6f60bc5dfdeff76e93ddbd99a9a0e39efa58e29ffde5b137"
    end 
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/hello/releases/download/v1.6.2/hello-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "871f5d4de194198a358e732dcd9eb5b57a83afccd4a2e53dacc816bd42445b58"
    end 
  end

  def install
    bin.install "hello"
  end
end
