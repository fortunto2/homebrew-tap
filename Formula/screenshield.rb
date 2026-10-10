class Screenshield < Formula
  desc "DLP for video: blur secrets on recorded screens and live streams, watch code, catch QR phishing"
  homepage "https://github.com/fortunto2/screenshield"
  url "https://github.com/fortunto2/screenshield/releases/download/v0.2.0/screenshield-0.2.0-aarch64-apple-darwin.tar.gz"
  sha256 "1cbcaf4387a74d8fde4e808f81f157cf34b86f86a12139e37c3c972c48482cd8"
  license "MIT"
  version "0.2.0"

  depends_on :macos
  depends_on arch: :arm64
  depends_on "ffmpeg"

  def install
    bin.install "shield"
    bin.install "visionscan" # Apple Vision OCR + barcode helper, looked up next to `shield`
  end

  def caveats
    <<~EOS
      Quick start:
        shield scan lecture.mp4
        shield run --in "cam:iPhone Camera" --out rtmp://your-server/live/key
      Optional: AKASHML_API_KEY (responder agent), CLICKHOUSE_URL (fleet archive). Works offline without them.
    EOS
  end

  test do
    assert_match "shield", shell_output("#{bin}/shield --help")
  end
end
