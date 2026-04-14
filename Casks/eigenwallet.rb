cask "eigenwallet" do
  version "4.4.0"

  on_arm do
    sha256 "244fcdd4ba2ea4a495489f364c020cb8c109e06029d77cd08087f76aaca853b6"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "dde29ed9930ee56f10511d7feacd923d18ef07ab017384a345cd9bffc1aa9c56"
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
