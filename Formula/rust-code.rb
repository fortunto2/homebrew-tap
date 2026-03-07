class RustCode < Formula
  desc "AI-powered terminal coding agent written in Rust"
  homepage "https://github.com/fortunto2/rust-code"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fortunto2/rust-code/releases/download/v0.5.0/rust-code-macos-aarch64.tar.gz"
      sha256 "e1926e7d089989650ebc852bd360e6edc965a402985589607958840d1d0bdde4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/fortunto2/rust-code/releases/download/v0.5.0/rust-code-linux-x86_64.tar.gz"
      sha256 "553b4dec957c53b3c9f6e4dbfa0e357f4ec5df40b7ffbd2ccf4fa16fd03fc7d3"
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
