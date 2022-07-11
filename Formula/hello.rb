class Hello < Formula
    desc "hello app"
    homepage "https://github.com/rvigo/hello"
    version "1.5.0"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/rvigo/hello/releases/download/v1.5.0/hello-aarch64-apple-darwin.zip"
        sha256 "9dc7d7a457845b64e4546bf5450a72840deb4845b8b8ad22f1990c54309ffe58"
        def install
          bin.install "hello"
        end
      end 
      if Hardware::CPU.intel?
        url "https://github.com/rvigo/hello/releases/download/v1.5.0/hello-x86_64-apple-darwin.zip"
        sha256 "9dc7d7a457845b64e4546bf5450a72840deb4845b8b8ad22f1990c54309ffe58"

        def install
          bin.install "hello"
        end
      end 
    end

    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/rvigo/hello/releases/download/v1.5.0/hello-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "9dc7d7a457845b64e4546bf5450a72840deb4845b8b8ad22f1990c54309ffe58"

        def install
          bin.install "hello"
        end
      end 
      if Hardware::CPU.intel?
        url "https://github.com/rvigo/hello/releases/download/v1.5.0/hello-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "9dc7d7a457845b64e4546bf5450a72840deb4845b8b8ad22f1990c54309ffe58"

        def install
          bin.install "hello"
        end
      end 
    end
  end
