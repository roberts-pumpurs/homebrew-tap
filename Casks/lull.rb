cask "lull" do
  version "0.1.10"
  sha256 "94f5ab84206be54c2f104f125a28c7e94bde785722b993a3691c318e846af5a9"

  url "https://github.com/roberts-pumpurs/lull/releases/download/v#{version}/lull-#{version}.dmg"
  name "Lull"
  desc "Menu bar app that makes you take breaks"
  homepage "https://github.com/roberts-pumpurs/lull"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "Lull.app"

  uninstall quit: "com.pumpurlabs.lull"

  zap trash: [
    "~/Library/Application Support/com.pumpurlabs.lull",
    "~/Library/Preferences/com.pumpurlabs.lull.plist",
  ]
end
