cask "eigenwallet" do
  version "4.5.0"

  on_arm do
    sha256 "d89e217028774eafbf0b4e16a66e22aeda6ad74ce4a42fda4ffb65598d806911"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "3cbd31c418ee51107a1d25989e6f04285e9016859c17506218753f3634741ba0"
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
