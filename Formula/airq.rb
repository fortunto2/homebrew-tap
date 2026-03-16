class Airq < Formula
  desc "CLI air quality checker — any city, Open-Meteo + Sensor.Community"
  homepage "https://github.com/fortunto2/airq"
  url "https://github.com/fortunto2/airq/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "9625605ed0efda8325b40567a8d911be78ec68eaf0c1e5241ca1e6dca351b359"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    assert_match "airq", shell_output("#{bin}/airq --version")
  end
end
