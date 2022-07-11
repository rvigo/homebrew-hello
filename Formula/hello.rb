class Hello < Formula
    desc "hello app"
    homepage "https://github.com/rvigo/hello"
    version "1.5.1"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/rvigo/hello/releases/download/v1.5.0/hello-aarch64-apple-darwin.zip"
        sha256 "dea8c6f93e790d21ea9a1d80cee3b2fcbb52fcdfb3557a1b1ce15784b259e1c5"
        def install
          bin.install "hello"
        end
      end 
      if Hardware::CPU.intel?
        url "https://github.com/rvigo/hello/releases/download/v1.5.0/hello-x86_64-apple-darwin.zip"
        sha256 "dea8c6f93e790d21ea9a1d80cee3b2fcbb52fcdfb3557a1b1ce15784b259e1c5"

        def install
          bin.install "hello"
        end
      end 
    end

    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/rvigo/hello/releases/download/v1.5.0/hello-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "dea8c6f93e790d21ea9a1d80cee3b2fcbb52fcdfb3557a1b1ce15784b259e1c5"

        def install
          bin.install "hello"
        end
      end 
      if Hardware::CPU.intel?
        url "https://github.com/rvigo/hello/releases/download/v1.5.1/hello-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "dea8c6f93e790d21ea9a1d80cee3b2fcbb52fcdfb3557a1b1ce15784b259e1c5"

        def install
          bin.install "hello"
        end
      end 
    end
  end
