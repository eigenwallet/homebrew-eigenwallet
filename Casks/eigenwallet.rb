cask "eigenwallet" do
  version "3.5.0"

  on_arm do
    sha256 "20d74fd6d1ec38e8a6b3459ecf3cf1d9c45d23380a8f78bbbd448f4f72816fb8"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "6b0ef5fc399c98d3cc8810fffd75bc2349f7fa5cb793c75f0db29b15b22b74b6"
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
