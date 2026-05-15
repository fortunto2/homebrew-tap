class RustCode < Formula
  desc "AI-powered terminal coding agent written in Rust"
  homepage "https://github.com/fortunto2/rust-code"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fortunto2/rust-code/releases/download/v0.6.2/rust-code-macos-aarch64.tar.gz"
      sha256 "34d7e3b95f0c89bae1e442665780719c6264602dd55677bc5a4634a9ab4a9abc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/fortunto2/rust-code/releases/download/v0.6.2/rust-code-linux-x86_64.tar.gz"
      sha256 "5a34dc6eedd44615d4705eb0c37e60c47b252644bbd57a8f582731854ab5947b"
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
