class Supervox < Formula
  desc "Voice-powered productivity TUI — live call assistant + post-call analysis + agent chat"
  homepage "https://github.com/fortunto2/supervox"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fortunto2/supervox/releases/download/v0.7.0/supervox-aarch64-apple-darwin.tar.gz"
      sha256 "0eac8fff40ec6e8fd09f79c771b45bdcd86040c4232d54f1e33183d83d000327"
    end
  end

  def install
    bin.install "supervox"
  end

  test do
    assert_match "supervox", shell_output("#{bin}/supervox --version")
  end
end
