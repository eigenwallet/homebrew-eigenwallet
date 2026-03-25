cask "eigenwallet" do
  version "4.1.0"

  on_arm do
    sha256 "b6deb83b0022b97b2dbc62db02effe79e09c0857a4dc11ad555c11fa5afdb2e2"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "9006309abe596bc2663928eac35faac645ac47a5f3abce9df4ba349e12d86377"
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
