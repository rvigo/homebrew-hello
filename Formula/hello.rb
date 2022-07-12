class Hello < Formula
    desc "hello app"
    homepage "https://github.com/rvigo/hello"
    version "1.6.2"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/rvigo/hello/releases/download/v1.5.0/hello-aarch64-apple-darwin.zip"
        sha256 "4c20d70dbc1b66197afcf6f07b75c313d8220a8081dfcc6f90550453b72863ad"
        def install
          bin.install "hello"
        end
      end 
      if Hardware::CPU.intel?
        url "https://github.com/rvigo/hello/releases/download/v1.5.0/hello-x86_64-apple-darwin.zip"
        sha256 "4c20d70dbc1b66197afcf6f07b75c313d8220a8081dfcc6f90550453b72863ad"

        def install
          bin.install "hello"
        end
      end 
    end

    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/rvigo/hello/releases/download/v1.5.0/hello-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "4c20d70dbc1b66197afcf6f07b75c313d8220a8081dfcc6f90550453b72863ad"

        def install
          bin.install "hello"
        end
      end 
      if Hardware::CPU.intel?
        url "https://github.com/rvigo/hello/releases/download/v1.6.2/hello-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "4c20d70dbc1b66197afcf6f07b75c313d8220a8081dfcc6f90550453b72863ad"

        def install
          bin.install "hello"
        end
      end 
    end
  end
