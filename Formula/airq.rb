class Airq < Formula
  desc "CLI air quality checker — any city, Open-Meteo + Sensor.Community"
  homepage "https://github.com/fortunto2/airq"
  url "https://github.com/fortunto2/airq/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "9b292f8b99a6e9e75debd430f7b2f41b80d4365f94e7b69b99d04d877a02702d"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    assert_match "airq", shell_output("#{bin}/airq --version")
  end
end
