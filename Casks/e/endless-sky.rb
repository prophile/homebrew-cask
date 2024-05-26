cask "endless-sky" do
  version "0.10.7"
  sha256 "6a239b872fb1b99c1e44cfdbb48186948e8e484f0009498a6b4ce1a506da5501"

  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/Endless-Sky-v#{version}.dmg",
      verified: "github.com/endless-sky/endless-sky/"
  name "Endless Sky"
  desc "Space exploration, trading, and combat game"
  homepage "https://endless-sky.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Endless Sky.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/endless-sky.sfl",
    "~/Library/Application Support/endless-sky",
    "~/Library/Saved Application State/Endless-Sky.savedState",
  ]
end
