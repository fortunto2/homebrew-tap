class RustCode < Formula
  desc "AI-powered terminal coding agent written in Rust"
  homepage "https://github.com/fortunto2/rust-code"
  version "0.6.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fortunto2/rust-code/releases/download/v0.6.4/rust-code-macos-aarch64.tar.gz"
      sha256 "d6ee81e8da9a91199f1b8854a0e9a9b70d83ad877f63a169002e56d1c5068102"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/fortunto2/rust-code/releases/download/v0.6.4/rust-code-linux-x86_64.tar.gz"
      sha256 "ab2233b9b77bad24c6acfed8415df745e7bd2166f7e5b88496d6c94d8acb78a0"
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
