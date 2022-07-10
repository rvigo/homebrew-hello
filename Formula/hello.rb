class Hello < Formula
    desc "hello app"
    homepage "https://github.com/rvigo/hello"
    url "https://github.com/rvigo/hello/releases/download/v1.5.0/hello-aarch64-apple-darwin.zip"
    version "1.5.1"
  
    def install
      bin.install "hello"
    end
  end
