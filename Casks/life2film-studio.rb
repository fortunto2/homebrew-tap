cask "life2film-studio" do
  version "0.3.0"
  sha256 "c6d54a01dda6179ee27c89448c717befb18a19fbab47b04ffc04431571283efe"

  url "https://github.com/fortunto2/life2film-landing/releases/download/desktop-v#{version}/Life2FilmStudio.dmg"
  name "Life2Film Studio"
  desc "Desktop video analyser and montage builder, runs entirely on your machine"
  homepage "https://life2film.com/"

  depends_on macos: :ventura
  depends_on arch: :arm64
  depends_on formula: "ffmpeg"

  app "Life2Film Studio.app"

  zap trash: [
    "~/Library/Application Support/Life2Film Studio",
    "~/Library/Caches/com.life2film.studio",
    "~/Library/Preferences/com.life2film.studio.plist",
    "~/Library/Saved Application State/com.life2film.studio.savedState",
  ]
end
