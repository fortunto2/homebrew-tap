class RustSynth < Formula
  desc "Terminal modular ambient synth — FunDSP + Ratatui, Euclidean drum machine, Game of Life coupling"
  homepage "https://github.com/fortunto2/rust-synth"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fortunto2/rust-synth/releases/download/v0.20.0/rust-synth-v0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "d130ae30fabb34fb48d4ab672311c3028e3649bd0250bc045e70efdc9d072e6d"
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
