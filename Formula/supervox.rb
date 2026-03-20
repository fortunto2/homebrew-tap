class Supervox < Formula
  desc "Voice-powered productivity TUI — live call assistant + post-call analysis + agent chat"
  homepage "https://github.com/fortunto2/supervox"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fortunto2/supervox/releases/download/v0.7.2/supervox-aarch64-apple-darwin.tar.gz"
      sha256 "6d71dba8ee60a1f68c1d0f41ccc711206c1d280b916afebe4c2e1e5e868e3940"
    end
  end

  def install
    bin.install "supervox"
  end

  test do
    assert_match "supervox 0.7.2", shell_output("#{bin}/supervox --version")
  end
end
