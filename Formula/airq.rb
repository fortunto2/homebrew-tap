class Airq < Formula
  desc "CLI air quality checker — any city, Open-Meteo + Sensor.Community"
  homepage "https://github.com/fortunto2/airq"
  url "https://github.com/fortunto2/airq/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "7c4ab6cad0ec2a3376e92afedc0954aa0f974850f6602a95f9345f6536f11132"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    assert_match "airq", shell_output("#{bin}/airq --version")
  end
end
