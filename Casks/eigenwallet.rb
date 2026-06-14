cask "eigenwallet" do
  version "4.9.2"

  on_arm do
    sha256 "b133b90a1c27fadcede9596109deb28ef44c39ed8e0397f60428e8a0539129d7"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "504342e5242f884bc3a92b7f29bf37e27a0b1c35ac34f2a8ab7fb9a82b1ac609"
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
