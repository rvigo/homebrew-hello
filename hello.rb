# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hello < Formula
  desc "hello app"
  homepage "https://github.com/rvigo/homebrew-hello"
  version "1.6.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rvigo/hello/releases/download/v1.6.4/hello_1.6.4_Darwin_arm64.tar.gz"
      sha256 "fd1935cd250b751ba5bcc1b0582d95b8d1b5f0ab6932203343bc9df635f7e748"

      def install
        bin.install "hello"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/hello/releases/download/v1.6.4/hello_1.6.4_Darwin_x86_64.tar.gz"
      sha256 "ec48442a3bcd6cef0ca8dfd9fb1c7564d3d927b12708393c2706e36e8eb86375"

      def install
        bin.install "hello"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rvigo/hello/releases/download/v1.6.4/hello_1.6.4_Linux_arm64.tar.gz"
      sha256 "c7ed255ef4b1cb00825e7747204b2ad3f1c16bd5a5e19c0e80a12cce3ad5f4ff"

      def install
        bin.install "hello"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/hello/releases/download/v1.6.4/hello_1.6.4_Linux_x86_64.tar.gz"
      sha256 "b2e92d779a9eddd77c782d1dd32e1b02c229d71ed08a396a054592297332ec77"

      def install
        bin.install "hello"
      end
    end
  end
end
