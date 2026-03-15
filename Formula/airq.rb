class Airq < Formula
  desc "CLI air quality checker — any city, Open-Meteo + Sensor.Community"
  homepage "https://github.com/fortunto2/airq"
  url "https://github.com/fortunto2/airq/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "be263dc4401adf2e4693bfd615a18b47069d82a3e9d08f10006bfda10d394779"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    assert_match "airq", shell_output("#{bin}/airq --version")
  end
end
