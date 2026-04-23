class RustSynth < Formula
  desc "Terminal modular ambient synth — FunDSP + Ratatui, Euclidean drum machine, Game of Life coupling"
  homepage "https://github.com/fortunto2/rust-synth"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fortunto2/rust-synth/releases/download/v0.17.0/rust-synth-v0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "4baeffad8754c2e1da5bade4305f6d2dd4026ec70a1fa4a5851dc5c0ebce0f5b"
    end
  end

  head do
    url "https://github.com/fortunto2/rust-synth.git", branch: "main"
    depends_on "rust" => :build
  end

  def install
    if build.head?
      system "cargo", "install", *std_cargo_args(path: ".")
    else
      bin.install "rust-synth"
      bin.install "rust-synth-render"
      prefix.install "README.md"
    end
  end

  test do
    system "#{bin}/rust-synth-render", "--duration", "1", "--out", "#{testpath}/test.wav"
    assert_predicate testpath/"test.wav", :exist?
  end
end
