class RustCode < Formula
  desc "AI-powered terminal coding agent written in Rust"
  homepage "https://github.com/fortunto2/rust-code"
  version "0.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fortunto2/rust-code/releases/download/v0.6.3/rust-code-macos-aarch64.tar.gz"
      sha256 "3659a25e5574b881e93bbc11255ea59741e21cb923449018f6de94a3f377b27f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/fortunto2/rust-code/releases/download/v0.6.3/rust-code-linux-x86_64.tar.gz"
      sha256 "4febadff1311a4de6aeef1852b5bc2bed8c495ef3cc07ca7ecdb54984392ee21"
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
