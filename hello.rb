# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hello < Formula
  desc "hello app"
  homepage "https://github.com/rvigo/homebrew-hello"
  version "1.6.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/hello/releases/download/v1.6.7/hello_1.6.7_darwin_x86_64.tar.gz"
      sha256 "8092085eecac62a08ad2bf96d0ae4db34271e48e7c9a628554a74c595d844b0f"

      def install
        bin.install "hello"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rvigo/hello/releases/download/v1.6.7/hello_1.6.7_darwin_arm64.tar.gz"
      sha256 "3344be3c047ad97a9a392fb362bd8555049ce8e7bec3c5b50ba756d5715f88da"

      def install
        bin.install "hello"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rvigo/hello/releases/download/v1.6.7/hello_1.6.7_linux_arm64.tar.gz"
      sha256 "6ea826ff2dfc62cfc797c9cf7f1ddbb53aef972d304f567608ce210011dd796c"

      def install
        bin.install "hello"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/hello/releases/download/v1.6.7/hello_1.6.7_linux_x86_64.tar.gz"
      sha256 "e2b4dbaa657b429a061d5db733631cb8caa382e4b83c3436f4c580d29287cb3e"

      def install
        bin.install "hello"
      end
    end
  end
end
