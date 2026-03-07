class RustCode < Formula
  desc "AI-powered terminal coding agent written in Rust"
  homepage "https://github.com/fortunto2/rust-code"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fortunto2/rust-code/releases/download/v0.3.0/rust-code-macos-aarch64.tar.gz"
      sha256 "PLACEHOLDER_UPDATE_AFTER_MAC_BUILD"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/fortunto2/rust-code/releases/download/v0.3.0/rust-code-linux-x86_64.tar.gz"
      sha256 "24968c8bc76bc906ccfa10b22c44e18dbcf4ac2abd1e91abfd149d55b0c8ed94"
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
