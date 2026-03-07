class RustCode < Formula
  desc "AI-powered terminal coding agent written in Rust"
  homepage "https://github.com/fortunto2/rust-code"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fortunto2/rust-code/releases/download/v0.5.1/rust-code-macos-aarch64.tar.gz"
      sha256 "31c3d0d9dda694735a7980f1d0d7295437eef2b4b3db74d3185fb96af3c49b53"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/fortunto2/rust-code/releases/download/v0.5.1/rust-code-linux-x86_64.tar.gz"
      sha256 "a1e93cfa508e6e5df03e84eee8a93ec01ffcf2931dbcbaf55b11f9c89e4e1771"
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
