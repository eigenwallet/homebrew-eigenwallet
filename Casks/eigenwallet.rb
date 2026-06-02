cask "eigenwallet" do
  version "4.7.10"

  on_arm do
    sha256 "ae99689be1accba86ed0ba79e06f77c582589b672e5189d9948bb02890485e8e"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "f9dd63e8c9b0cb75622ae4dad48a284473477a9953947710e7074d098c9178fc"
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
