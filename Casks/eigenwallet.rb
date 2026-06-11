cask "eigenwallet" do
  version "4.9.0"

  on_arm do
    sha256 "fd02e15cc0f4bbcd2097b0ffc4b30102bebcd301e24e846bcb11a35b234b6d59"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "29d251ceafab26c43646fec3f3dc39a99aa4c0975e8b558a93dce273b96c126d"
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
