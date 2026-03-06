class RustCode < Formula
  desc "AI-powered terminal coding agent written in Rust"
  homepage "https://github.com/fortunto2/rust-code"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fortunto2/rust-code/releases/download/v0.2.0/rust-code-macos-aarch64.tar.gz"
      sha256 "a2a3acece842bfeb5fb2bfed58fc6d2bd42033a29d07a6edf6a9e5aee991c40a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/fortunto2/rust-code/releases/download/v0.2.0/rust-code-linux-x86_64.tar.gz"
      sha256 "5d8d0f2d5513a848262b65796bbe64de7a6b2e05531e37aa0213b4d2c1ed57e9"
    end
  end

  depends_on "tmux"

  def install
    bin.install "rust-code"
  end

  test do
    assert_match "rust-code", shell_output("#{bin}/rust-code --version")
  end
end
