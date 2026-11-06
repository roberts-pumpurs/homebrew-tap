cask "lull" do
  version "0.1.11"
  sha256 "b075a3653ee05fb85664abf1d52ff8d7939825a2a4d0be30f8be9d07fdd8ec0e"

  url "https://github.com/roberts-pumpurs/homebrew-tap/releases/download/lull-v#{version}/lull-#{version}.dmg"
  name "Lull"
  desc "Menu bar app that makes you take breaks"
  homepage "https://github.com/roberts-pumpurs/homebrew-tap"

  livecheck do
    url :url
    regex(/^lull-v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: ">= :tahoe"

  app "Lull.app"

  uninstall quit: "com.pumpurlabs.lull"

  zap trash: [
    "~/Library/Application Support/com.pumpurlabs.lull",
    "~/Library/Preferences/com.pumpurlabs.lull.plist",
  ]
end
