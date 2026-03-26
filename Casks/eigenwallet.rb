cask "eigenwallet" do
  version "4.1.1"

  on_arm do
    sha256 "5851e1ba45ccb33c1e2ae57a867e4b5e11043f9ee6d7a43ea465077ee98137d5"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "eb24f002b2b3725ec34e7f34bbfb63f2579846731819d7ac5706ad827880edbc"
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
