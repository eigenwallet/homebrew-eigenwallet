cask "eigenwallet" do
  version "3.5.1"

  on_arm do
    sha256 "ffad89eca96787334b55127913fb1d9e7e549a39aea6b8e4276dac2ef17ad118"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "d000b9a45aa9cc04daa40a868d2519f7d544431f1af0c127dc9935fb2e655081"
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
