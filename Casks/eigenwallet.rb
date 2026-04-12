cask "eigenwallet" do
  version "4.3.1"

  on_arm do
    sha256 "e0d4d0ffd9539e25c4c3bbdbfe73e2d60094acaa5968ed5482c46b01ad38ca84"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "6edd3449455b5a797a994ba90864efea398008636e5e6df40ec73ebfd8b47ec9"
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
