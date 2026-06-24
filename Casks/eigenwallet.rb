cask "eigenwallet" do
  version "4.11.2"

  on_arm do
    sha256 "60c8b948de9ed9e47148f7b8b9b8aff99580d5491c131e742c11f33036931182"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "bc865f3296e3bcaec4ebf8559f2c859630e6f7873051647e9efb151d1f326a13"
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
