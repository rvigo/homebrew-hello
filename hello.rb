# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hello < Formula
  desc "hello app"
  homepage "https://github.com/rvigo/homebrew-hello"
  version "1.9.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/hello/releases/download/v1.9.1/hello_1.9.1_darwin_x86_64.tar.gz"
      sha256 "fceadb499bdb851ac85311d2548d9cd57f89d61fb8fde7134dc70f7c7f4cf561"

      def install
        bin.install "hello"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rvigo/hello/releases/download/v1.9.1/hello_1.9.1_darwin_arm64.tar.gz"
      sha256 "a5b5f9f893a22ba288bbe502c724da8c58f353c4ecd23a0d92a7539d349a698c"

      def install
        bin.install "hello"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/hello/releases/download/v1.9.1/hello_1.9.1_linux_x86_64.tar.gz"
      sha256 "42d6053f41fbc9b2b37b20905df3c4519ee60802f1831f0bd059a21d70a62c7a"

      def install
        bin.install "hello"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rvigo/hello/releases/download/v1.9.1/hello_1.9.1_linux_arm64.tar.gz"
      sha256 "07360c608d86bf2582ecdb2aa34e45ec88daa3316a8a7935f942897c46d97a0b"

      def install
        bin.install "hello"
      end
    end
  end
end
