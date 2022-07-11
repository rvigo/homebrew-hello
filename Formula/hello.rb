class Hello < Formula
    desc "hello app"
    homepage "https://github.com/rvigo/hello"
    version "1.5.1"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/rvigo/hello/releases/download/v1.5.0/hello-aarch64-apple-darwin.zip"
    
        def install
          bin.install "hello"
        end
      end 
      if Hardware::CPU.intel?
        url "https://github.com/rvigo/hello/releases/download/v1.5.0/hello-x86_64-apple-darwin.zip"
    
        def install
          bin.install "hello"
        end
      end 
    end

    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/rvigo/hello/releases/download/v1.5.0/hello-aarch64-unknown-linux-gnu.tar.gz"
    
        def install
          bin.install "hello"
        end
      end 
      if Hardware::CPU.intel?
        url "https://github.com/rvigo/hello/releases/download/v1.5.0/hello-x86_64-unknown-linux-gnu.tar.gz"
    
        def install
          bin.install "hello"
        end
      end 
    end
  end
