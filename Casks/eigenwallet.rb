cask "eigenwallet" do
  version "3.2.10"

  on_arm do
    sha256 "7bfeb0130f62470c62ea61083d38e34ab422354cb630b7b92b24fbf985e1e20d"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "4cb8c47ade36dc96f72d1127cbf4e3ec7abd533c717810be18da9a00bd9be5bf"
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
