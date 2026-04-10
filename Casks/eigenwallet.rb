cask "eigenwallet" do
  version "4.3.0"

  on_arm do
    sha256 "7592aaaccd9fd9935044d5f3a232c70abfb6d9ac4048b15e2f6602e740ed66fc"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "a40e07288c5bc3fed27f76b9ae23378db3b7466b2cafb229d9dfd65b0b1145af"
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
