cask "portkiller" do
  version "3.0.1"
  sha256 "fda879563aae7113798537cb36baa7f6e003b0bb3de3144345c1f8b275f87bcf"

  url "https://github.com/HarveyGG/port-killer/releases/download/v3.0.1/PortKiller-v3.0.1-arm64.dmg"
  name "PortKiller"
  desc "Menu bar app to find and kill processes running on open ports"
  homepage "https://github.com/HarveyGG/port-killer"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "PortKiller.app"

  zap trash: [
    "~/Library/Preferences/com.productdevbook.PortKiller.plist",
    "~/Library/Caches/com.productdevbook.PortKiller",
  ]
end
