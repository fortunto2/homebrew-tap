class VisaPhoto < Formula
  desc "Desktop app for biometric visa/passport photos with AI background removal"
  homepage "https://github.com/fortunto2/visa-photo"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fortunto2/visa-photo/releases/download/v0.1.0/visa-photo-macos-arm64.tar.gz"
      sha256 "122cd9b2594ec30d7289d4b650f8ce8d817d493c3298da527cc25d0652f7b896"
    else
      url "https://github.com/fortunto2/visa-photo/releases/download/v0.1.0/visa-photo-macos-x64.tar.gz"
      sha256 "b7091f51e5126486f0ef9b7e534aa91e18c205ea3fa51ba50fa352fbbc7f3f94"
    end
  end

  def install
    bin.install "visa-photo"
    prefix.install "presets.toml"
    prefix.install "models.toml"
    prefix.install "download.sh"
    if File.exist?("tools/rembg-vision")
      bin.install "tools/rembg-vision"
    elsif File.exist?("tools/rembg-vision.swift")
      prefix.install "tools"
    end
  end

  test do
    assert_predicate bin/"visa-photo", :executable?
  end
end
