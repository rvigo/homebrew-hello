# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hello < Formula
  desc "hello app"
  homepage "https://github.com/rvigo/homebrew-hello"
  version "1.7.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/hello/releases/download/v1.7.2/hello_1.7.2_darwin_x86_64.tar.gz"
      sha256 "2b5eebd0ed15c52f23d7d5bb78ecd5e5bec4b8bf0bf41d555781215b01b99ebd"

      def install
        bin.install "hello"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rvigo/hello/releases/download/v1.7.2/hello_1.7.2_darwin_arm64.tar.gz"
      sha256 "a26a17437811685551f14b4fcf72c21157274f360da0080eb32a3e1aaded0008"

      def install
        bin.install "hello"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/hello/releases/download/v1.7.2/hello_1.7.2_linux_x86_64.tar.gz"
      sha256 "7e0fcc4eb594b89d83ddcb484a6145cd110e45624b56929cd1f99d33cd3a508d"

      def install
        bin.install "hello"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rvigo/hello/releases/download/v1.7.2/hello_1.7.2_linux_arm64.tar.gz"
      sha256 "2118936e77f5809db0f3f9085eeb3a3f5e60e03b578d0c5f8fc545c431fa7aeb"

      def install
        bin.install "hello"
      end
    end
  end
end
