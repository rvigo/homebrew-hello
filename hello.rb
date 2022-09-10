# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hello < Formula
  desc "hello app"
  homepage "https://github.com/rvigo/homebrew-hello"
  version "1.11.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/hello/releases/download/v1.11.10/hello_darwin_x86_64.tar.gz"
      sha256 "6c5b76c2acb898403a1d0ac6db0527bc782650f300539d80e246023b874fbbdf"

      def install
        bin.install "hello"
        zsh_completion.install "completions/zsh/hello.zsh" => "_hello"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rvigo/hello/releases/download/v1.11.10/hello_darwin_arm64.tar.gz"
      sha256 "e67fbeef6d897727867912e79c919cba4a0426e99358cee48360f34f25b27342"

      def install
        bin.install "hello"
        zsh_completion.install "completions/zsh/hello.zsh" => "_hello"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rvigo/hello/releases/download/v1.11.10/hello_linux_arm64.tar.gz"
      sha256 "103a774a8fbc8304df13fde7cde4cfd8abcc20635e3d4eff5c1ddc09f1589947"

      def install
        bin.install "hello"
        zsh_completion.install "completions/zsh/hello.zsh" => "_hello"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/hello/releases/download/v1.11.10/hello_linux_x86_64.tar.gz"
      sha256 "a1d593f0374f214d4ef4246c4cfc1f591ace7f19e66be58ac7ad0a00c2dc2297"

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
      FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}
    EOS
  end
end
