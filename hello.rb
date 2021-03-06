# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hello < Formula
  desc "hello app"
  homepage "https://github.com/rvigo/homebrew-hello"
  version "1.8.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rvigo/hello/releases/download/v1.8.1/hello_1.8.1_darwin_arm64.tar.gz"
      sha256 "c206a398a3a9928b56478eb0bc5435806d772130ee035e5d34a8a1b1d015b871"

      def install
        bin.install "hello"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/hello/releases/download/v1.8.1/hello_1.8.1_darwin_x86_64.tar.gz"
      sha256 "bd48783637aa710abf1f52cb34ec4bab052f2f6df5690dada130b0e3d111bb02"

      def install
        bin.install "hello"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/hello/releases/download/v1.8.1/hello_1.8.1_linux_x86_64.tar.gz"
      sha256 "4cf493d5b9605f6cfb2fa6fad1849d94072d034aa8878a1775f67c71a8245b5d"

      def install
        bin.install "hello"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rvigo/hello/releases/download/v1.8.1/hello_1.8.1_linux_arm64.tar.gz"
      sha256 "ddbbd9279b098e997ae73e83f6f8d5d9abdd25b84c0af3e26f380eefe10b7f20"

      def install
        bin.install "hello"
      end
    end
  end
end
