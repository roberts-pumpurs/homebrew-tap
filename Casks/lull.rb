cask "lull" do
  version "0.1.12"
  sha256 "4495479c4c9c7ee10b29f3dc39f63fa8762a3cc24dc8b627efef33b7b3ab6653"

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
