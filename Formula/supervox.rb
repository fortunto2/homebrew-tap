class Supervox < Formula
  desc "Voice-powered productivity TUI — live call assistant + post-call analysis + agent chat"
  homepage "https://github.com/fortunto2/supervox"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fortunto2/supervox/releases/download/v0.7.1/supervox-aarch64-apple-darwin.tar.gz"
      sha256 "b6487b0e1040be98d6393094eb2b2d6477169c79fffb7d9abac9b4efa329ee35"
    end
  end

  def install
    bin.install "supervox"
  end

  test do
    assert_match "supervox 0.7.1", shell_output("#{bin}/supervox --version")
  end
end
