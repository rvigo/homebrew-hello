# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hello < Formula
  desc "hello app"
  homepage "https://github.com/rvigo/homebrew-hello"
  version "1.11.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/hello/releases/download/v1.11.9/hello_darwin_x86_64.tar.gz"
      sha256 "3d0301f4f48d7cda48462bdae856e3e1a240a70a2d599ff2c8e7ca8414e16d0a"

      def install
        bin.install "hello"
        zsh_completion.install "completions/zsh/hello.zsh" => "_hello"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rvigo/hello/releases/download/v1.11.9/hello_darwin_arm64.tar.gz"
      sha256 "45ffda36e31a9aaede45d8119d48e27703345c368128ceee3b34748231af229e"

      def install
        bin.install "hello"
        zsh_completion.install "completions/zsh/hello.zsh" => "_hello"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rvigo/hello/releases/download/v1.11.9/hello_linux_arm64.tar.gz"
      sha256 "db956ee38a9f8d9661d720d05bc4a256c0a443ee6da8595cd9cfd2da88f02c53"

      def install
        bin.install "hello"
        zsh_completion.install "completions/zsh/hello.zsh" => "_hello"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/hello/releases/download/v1.11.9/hello_linux_x86_64.tar.gz"
      sha256 "bd7ea76a6b379a5d01d51351d7d2394403a283015a9cdfef102b0728e21a39bc"

      def install
        bin.install "hello"
        zsh_completion.install "completions/zsh/hello.zsh" => "_hello"
      end
    end
  end

  def caveats
    <<~EOS
      In order to get hello completion, add the following line to your ~/.zshrc: source ${HOMEBREW_PREFIX}/share/zsh/site-functions/_hello
    EOS
  end
end
