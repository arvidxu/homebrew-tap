cask "launchpod" do
  version "1.0.0"
  sha256 "0749af7abbf1cfdc1e5445b10645f853860c7e5d5466190c101bf55a70ea5a52"

  url "https://github.com/arvidxu/launchpod/releases/download/#{version}/Launchpod-#{version}-universal.dmg"
  name "Launchpod"
  desc "Open-source Launchpad alternative"
  homepage "https://github.com/arvidxu/launchpod"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Launchpod.app"

  zap trash: [
    "~/Library/Application Support/Launchpod",
    "~/Library/Caches/app.joyx.launchpod",
    "~/Library/HTTPStorages/app.joyx.launchpod",
    "~/Library/Preferences/app.joyx.launchpod.dock-icon.plist",
    "~/Library/Preferences/app.joyx.launchpod.plist",
  ]
end
