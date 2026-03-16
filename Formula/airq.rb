class Airq < Formula
  desc "CLI air quality checker — any city, Open-Meteo + Sensor.Community"
  homepage "https://github.com/fortunto2/airq"
  url "https://github.com/fortunto2/airq/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "3556341cb1b6bde2ad1c5040ec22980e975a1ac12e552cc4d177db7c38534a99"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    assert_match "airq", shell_output("#{bin}/airq --version")
  end
end
