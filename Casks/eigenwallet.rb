cask "eigenwallet" do
  version "4.2.3"

  on_arm do
    sha256 "3fabd9e0f0e3e49de2668232e8db3d823363686d5a315382cb4e02cbd0970792"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "b9da026f577c4499db35af542439c8deece15a329773a3ee1bcf08fa0f6217ea"
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
