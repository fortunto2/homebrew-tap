class RustCode < Formula
  desc "AI-powered terminal coding agent written in Rust"
  homepage "https://github.com/fortunto2/rust-code"
  version "0.6.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fortunto2/rust-code/releases/download/v0.6.5/rust-code-macos-aarch64.tar.gz"
      sha256 "3aee34b12c8303265208c2e9c43e9c63e8fe96c0d5e67d4b2082be5bfb42691d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/fortunto2/rust-code/releases/download/v0.6.5/rust-code-linux-x86_64.tar.gz"
      sha256 "d61785c029b54f24efe51d7f850379fa902a66b472715b7419684c5c12d34a5b"
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
