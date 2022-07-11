class Hello < Formula
    desc "hello app"
    homepage "https://github.com/rvigo/hello"
    version "1.6.0"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/rvigo/hello/releases/download/v1.5.0/hello-aarch64-apple-darwin.zip"
        sha256 "9dcb42d30ef58f37a7bc4bb860392d32fa6c4ed155c0ca0ab1665b5f81c44ced"
        def install
          bin.install "hello"
        end
      end 
      if Hardware::CPU.intel?
        url "https://github.com/rvigo/hello/releases/download/v1.5.0/hello-x86_64-apple-darwin.zip"
        sha256 "9dcb42d30ef58f37a7bc4bb860392d32fa6c4ed155c0ca0ab1665b5f81c44ced"

        def install
          bin.install "hello"
        end
      end 
    end

    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/rvigo/hello/releases/download/v1.5.0/hello-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "9dcb42d30ef58f37a7bc4bb860392d32fa6c4ed155c0ca0ab1665b5f81c44ced"

        def install
          bin.install "hello"
        end
      end 
      if Hardware::CPU.intel?
        url "https://github.com/rvigo/hello/releases/download/v1.6.0/hello-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "9dcb42d30ef58f37a7bc4bb860392d32fa6c4ed155c0ca0ab1665b5f81c44ced"

        def install
          bin.install "hello"
        end
      end 
    end
  end
