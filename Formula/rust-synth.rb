class RustSynth < Formula
  desc "Terminal modular ambient synth — FunDSP + Ratatui, Euclidean drum machine, Game of Life coupling"
  homepage "https://github.com/fortunto2/rust-synth"
  version "0.21.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fortunto2/rust-synth/releases/download/v0.21.1/rust-synth-v0.21.1-aarch64-apple-darwin.tar.gz"
      sha256 "5aa8aa74a569d318847fdd60fe11c9e4311912ceb61b9fd6afe2c19ecef5903a"
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
