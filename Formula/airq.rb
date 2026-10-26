class Airq < Formula
  desc "Air quality CLI: any city, Sensor.Community + Open-Meteo merge, EPA NowCast"
  homepage "https://rustman.org/projects/project-airq/"
  url "https://github.com/fortunto2/airq/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "50252fd8c77a7f4b424329bc59b81187034fc0b856eca2ac2240e7aaf144268c"
  license "AGPL-3.0-or-later"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    assert_match "airq", shell_output("#{bin}/airq --version")
  end
end
