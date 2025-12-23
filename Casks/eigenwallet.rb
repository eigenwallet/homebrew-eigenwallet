cask "eigenwallet" do
  version "3.6.2"

  on_arm do
    sha256 "5f813fee99e47ba634b726da28b7a5e0583fc81d8b7d5a1f27b8bd079f7f59f6"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "8ef3cc8fefdd00c64373e1966349117f6e8fc683c2ba67163c95b656deb61969"
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
