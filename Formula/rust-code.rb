class RustCode < Formula
  desc "AI-powered terminal coding agent written in Rust"
  homepage "https://github.com/fortunto2/rust-code"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fortunto2/rust-code/releases/download/v0.6.1/rust-code-macos-aarch64.tar.gz"
      sha256 "bb74d7bc4a117d2e4d8e2bb15590c9fde7b5d4565fa367e7723e7d861ccc2202"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/fortunto2/rust-code/releases/download/v0.6.1/rust-code-linux-x86_64.tar.gz"
      sha256 "4862809c68f05e9a5d58c47dff83cae3bd2189d6d0ca4faab9a937b36bbc920c"
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
