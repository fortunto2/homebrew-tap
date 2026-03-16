class Airq < Formula
  desc "CLI air quality checker — any city, Open-Meteo + Sensor.Community merged"
  homepage "https://github.com/fortunto2/airq"
  url "https://github.com/fortunto2/airq/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "6fef911bdaaeac31afe6d3129c909216c99f2704b1d2e0907d8f076a7557c345"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    assert_match "airq", shell_output("#{bin}/airq --version")
  end
end
