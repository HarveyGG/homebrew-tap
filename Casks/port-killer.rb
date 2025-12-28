cask "harveygg-port-killer" do
  version "3.0.0"
  sha256 "be3790db9a46329c3a63fc2c4ab4f5f803b984d571b8fde200b4708eb6db417f"

  url "https://github.com/HarveyGG/port-killer/releases/download/v#{version}/PortKiller-v#{version}.zip",
      verified: "github.com/HarveyGG/port-killer/"
  name "PortKiller"
  desc "A native macOS menu bar app for finding and killing processes on open ports"
  homepage "https://github.com/HarveyGG/port-killer"

  depends_on macos: ">= 15.0"

  app "PortKiller.app"

  zap trash: [
    "~/Library/Preferences/com.portkiller.app.plist",
    "~/Library/Application Support/PortKiller",
  ]
end

