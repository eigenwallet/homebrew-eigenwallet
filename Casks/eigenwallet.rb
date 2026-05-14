cask "eigenwallet" do
  version "4.6.0"

  on_arm do
    sha256 "f023895b57c2e829b8286be69a4b800afe291fcb5cfa8271acf5eaa4281d0c15"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "048992dde979935213d4067f79f4d1cc97cff49f34045a23d8e3c082193f3a9d"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_x64.dmg"
  end

  name "Eigenwallet"
  desc "GUI for XMR<>BTC Atomic Swaps"
  homepage "https://github.com/eigenwallet/core"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "eigenwallet.app"
end
