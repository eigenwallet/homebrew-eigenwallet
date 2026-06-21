cask "eigenwallet" do
  version "4.10.1"

  on_arm do
    sha256 "1c0cbabe229d8891f3c53e778a7cc45585eb3f56a0b10124ff19278ee8a77bf9"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "8ffaed0b412089dd64547e4ea5ed8df366e8602d09234c84eff871b7650f9147"
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
