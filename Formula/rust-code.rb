class RustCode < Formula
  desc "AI-powered terminal coding agent written in Rust"
  homepage "https://github.com/fortunto2/rust-code"
  version "0.6.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fortunto2/rust-code/releases/download/v0.6.6/rust-code-macos-aarch64.tar.gz"
      sha256 "cda56a12c80014a2901c650ae5bf6af507a6a364a855518e624611f6082c9dc4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/fortunto2/rust-code/releases/download/v0.6.6/rust-code-linux-x86_64.tar.gz"
      sha256 "3f991a415955b915577ad56b50f0373fd3847657a8043be17baa058bbbd76864"
    end
  end

  depends_on "tmux"
  depends_on "ripgrep"

  def install
    bin.install "rust-code"
  end

  test do
    assert_match "rust-code", shell_output("#{bin}/rust-code --version")
  end
end
