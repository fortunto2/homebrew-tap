cask "life2film-studio" do
  version "0.4.1"
  sha256 "b9d7c1e18b6f87909c68ad349b7809190aa1522f84a48dd3eb66400f3712e56b"

  url "https://github.com/fortunto2/life2film-landing/releases/download/desktop-v#{version}/Life2FilmStudio.dmg"
  name "Life2Film Studio"
  desc "Timeline editor that plays a film from its original files, with an agent door"
  homepage "https://life2film.com/studio/"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Life2Film Studio.app"

  zap trash: [
    "~/Library/Application Support/Life2Film Studio",
    "~/Library/Caches/com.life2film.studio",
    "~/Library/Caches/Life2Film Studio",
    "~/Library/Preferences/com.life2film.studio.plist",
    "~/Library/Saved Application State/com.life2film.studio.savedState",
  ]
end
