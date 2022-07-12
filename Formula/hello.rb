class Hello < Formula
  desc "hello app"
  homepage "https://github.com/rvigo/hello"
  version "1.6.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rvigo/hello/releases/download/v1.6.2/hello-aarch64-apple-darwin.zip"
    end 
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/hello/releases/download/v1.6.2/hello-x86_64-apple-darwin.zip"
    end 
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rvigo/hello/releases/download/v1.6.2/hello-aarch64-unknown-linux-gnu.tar.gz"
    end 
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/hello/releases/download/v1.6.2/hello-x86_64-unknown-linux-gnu.tar.gz"
    end 
  end

  def install
    bin.install "hello"
  end
end
