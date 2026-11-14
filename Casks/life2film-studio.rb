cask "life2film-studio" do
  version "0.4.0"
  sha256 "a82c6a7c4b60c81e88e0ec1354e06ea0520434ecc2c0e350e7fa0bc2b08ae033"

  url "https://github.com/fortunto2/life2film-landing/releases/download/desktop-v#{version}/Life2FilmStudio.dmg"
  name "Life2Film Studio"
  desc "Timeline editor that plays a film from its original files, with an agent door"
  homepage "https://life2film.com/studio/"

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "Life2Film Studio.app"

  zap trash: [
    "~/Library/Application Support/Life2Film Studio",
    "~/Library/Caches/Life2Film Studio",
    "~/Library/Caches/com.life2film.studio",
    "~/Library/Preferences/com.life2film.studio.plist",
    "~/Library/Saved Application State/com.life2film.studio.savedState",
  ]
end
