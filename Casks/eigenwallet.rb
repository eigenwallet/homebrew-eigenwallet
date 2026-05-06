cask "eigenwallet" do
  version "4.5.1"

  on_arm do
    sha256 "8716811a1434c40d507eb2e4114eb111bbdc6d66a239caa230fb39cf203f2116"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "fcee3645d779d63b29e6e5d0b9f67f3da6f53c8909771afe4de4841e38ae57fe"
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
