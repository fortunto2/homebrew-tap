cask "life2film-studio" do
  version "0.2.0"
  sha256 "fa61223d5ee702cd4a63da8c5ed217e8afbf621cee6826c7d8d590c49a3b8a77"

  url "https://github.com/fortunto2/life2film-landing/releases/download/desktop-v#{version}/Life2FilmStudio.dmg"
  name "Life2Film Studio"
  desc "Desktop video analyser and montage builder, runs entirely on your machine"
  homepage "https://life2film.com/"

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "Life2Film Studio.app"

  zap trash: [
    "~/Library/Application Support/Life2Film Studio",
    "~/Library/Caches/com.life2film.studio",
    "~/Library/Preferences/com.life2film.studio.plist",
    "~/Library/Saved Application State/com.life2film.studio.savedState",
  ]
end
