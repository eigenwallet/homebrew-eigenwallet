cask "eigenwallet" do
  version "4.8.2"

  on_arm do
    sha256 "7a3f8432897b1417fb90e8e78b71ed53c02d01c67bcb82fddba474c8f47f346d"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "4516052ad9890abeaea9b64d2d5d2a4ac09f79b9e2d94e1a7ab3990c1873b018"
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
