cask "eigenwallet" do
  version "4.5.2"

  on_arm do
    sha256 "8494378f5038eeb7561bb1fb76aaffd76b4824ae497d1b4e448918536b5d9812"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "115a9c0c4a32a3c71fa4dfc291ac970c4b627fc140cd979dde3eaeff6bcbd404"
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
