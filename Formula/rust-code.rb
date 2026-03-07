class RustCode < Formula
  desc "AI-powered terminal coding agent written in Rust"
  homepage "https://github.com/fortunto2/rust-code"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fortunto2/rust-code/releases/download/v0.4.0/rust-code-macos-aarch64.tar.gz"
      sha256 "PLACEHOLDER_UPDATE_AFTER_MAC_BUILD"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/fortunto2/rust-code/releases/download/v0.4.0/rust-code-linux-x86_64.tar.gz"
      sha256 "ce8621c95d6afe51533fbcec0ed5694332fd653ab31c998e0cba52aa912ad6e5"
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
