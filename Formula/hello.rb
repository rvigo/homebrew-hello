class Hello < Formula
    desc "hello app"
    homepage "https://github.com/rvigo/hello"
    version "1.6.1"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/rvigo/hello/releases/download/v1.5.0/hello-aarch64-apple-darwin.zip"
        sha256 "3e3bf3908e5330afbc59bc6094a94e64f0751db38a13b5017bcfe4e982061612"
        def install
          bin.install "hello"
        end
      end 
      if Hardware::CPU.intel?
        url "https://github.com/rvigo/hello/releases/download/v1.5.0/hello-x86_64-apple-darwin.zip"
        sha256 "3e3bf3908e5330afbc59bc6094a94e64f0751db38a13b5017bcfe4e982061612"

        def install
          bin.install "hello"
        end
      end 
    end

    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/rvigo/hello/releases/download/v1.5.0/hello-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "3e3bf3908e5330afbc59bc6094a94e64f0751db38a13b5017bcfe4e982061612"

        def install
          bin.install "hello"
        end
      end 
      if Hardware::CPU.intel?
        url "https://github.com/rvigo/hello/releases/download/v1.6.1/hello-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "3e3bf3908e5330afbc59bc6094a94e64f0751db38a13b5017bcfe4e982061612"

        def install
          bin.install "hello"
        end
      end 
    end
  end
