cask "life2film-studio" do
  version "0.1.1"
  sha256 "f3498de0b3e1df0719069a69da993b1040383ede695b636987e00e3dfcbe749a"

  url "https://github.com/fortunto2/life2film-landing/releases/download/desktop-v#{version}/Life2FilmStudio.dmg",
      verified: "github.com/fortunto2/life2film-landing/"
  name "Life2Film Studio"
  desc "Desktop video analyser and montage builder, runs entirely on your machine"
  homepage "https://life2film.com/"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Life2Film Studio.app"

  zap trash: [
    "~/Library/Application Support/Life2Film Studio",
    "~/Library/Caches/com.life2film.studio",
    "~/Library/Preferences/com.life2film.studio.plist",
    "~/Library/Saved Application State/com.life2film.studio.savedState",
  ]
end
