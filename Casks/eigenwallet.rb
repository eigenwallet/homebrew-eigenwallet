cask "eigenwallet" do
  version "4.11.4"

  on_arm do
    sha256 "5fd3d037e5e4ff9e763af8601b6be6982ebc6a05ebe91032af2a43cc236fa1aa"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "24d56c0738de9bdb1af9089b39aec84834c80ba331fad1f779900143e1a507b8"
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
