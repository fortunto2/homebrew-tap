class RustSynth < Formula
  desc "Terminal modular ambient synth — FunDSP + Ratatui, Euclidean drum machine, Game of Life coupling"
  homepage "https://github.com/fortunto2/rust-synth"
  version "0.22.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fortunto2/rust-synth/releases/download/v0.22.1/rust-synth-v0.22.1-aarch64-apple-darwin.tar.gz"
      sha256 "f3b95f90d4b8cd0e46a078cf399808fc5862ee7f97efbeda186eeb71d5c3f211"
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
