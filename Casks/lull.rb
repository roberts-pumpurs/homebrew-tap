cask "lull" do
  version "0.1.13"
  sha256 "c1265f9242bd0b7f5764fa9928b71f8248e8da52824de47c2f3615f946d0afc0"

  url "https://github.com/roberts-pumpurs/homebrew-tap/releases/download/lull-v#{version}/lull-#{version}.dmg"
  name "Lull"
  desc "Menu bar app that makes you take breaks"
  homepage "https://github.com/roberts-pumpurs/homebrew-tap"

  livecheck do
    url :url
    regex(/^lull-v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Lull.app"

  uninstall quit: "com.pumpurlabs.lull"

  zap trash: [
    "~/Library/Application Support/com.pumpurlabs.lull",
    "~/Library/Preferences/com.pumpurlabs.lull.plist",
  ]
end
