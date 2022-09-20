# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hello < Formula
  desc "hello app"
  homepage "https://github.com/rvigo/homebrew-hello"
  version "1.11.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/hello/releases/download/v1.11.11/hello_darwin_x86_64.tar.gz"
      sha256 "0be9ea34ed789974d6d1aeb8052c9d2db709356c53a27e109080480199a488eb"

      def install
        bin.install "hello"
        zsh_completion.install "completions/zsh/hello.zsh" => "_hello"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rvigo/hello/releases/download/v1.11.11/hello_darwin_arm64.tar.gz"
      sha256 "233df61d6b3642c65a5442a5bf7991ff735ff296b8bf93a6d3465183ab1d45ff"

      def install
        bin.install "hello"
        zsh_completion.install "completions/zsh/hello.zsh" => "_hello"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rvigo/hello/releases/download/v1.11.11/hello_linux_arm64.tar.gz"
      sha256 "d7cd944b895f9ad98b8ad48611db078b2108ef4a3ee55a118d704e1ff4475f01"

      def install
        bin.install "hello"
        zsh_completion.install "completions/zsh/hello.zsh" => "_hello"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/hello/releases/download/v1.11.11/hello_linux_x86_64.tar.gz"
      sha256 "de0a260faf9b38e75ed24d647cf1a182aaff25ca33e73c2383873c642839d395"

      def install
        bin.install "hello"
        zsh_completion.install "completions/zsh/hello.zsh" => "_hello"
      end
    end
  end

  def caveats
    <<~EOS
      In order to get hello completion, be sure that $(brew --prefix)/share/zsh/site-functions is present at $FPATH.
      If not add the following line to your ~/.zshrc:
      FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
    EOS
  end
end
