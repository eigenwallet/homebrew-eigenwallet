cask "eigenwallet" do
  version "3.6.4"

  on_arm do
    sha256 "6cb98e8d8d33be72f6815f3f21a5cea3a6c13976be8ac7f8fe0483da787284f3"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "90623bd21c55267e01cb874ed3af4ed4206f6e027abac59a72cb13949b43c1ba"
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
