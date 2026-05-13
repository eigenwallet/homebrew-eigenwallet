cask "eigenwallet" do
  version "4.5.4"

  on_arm do
    sha256 "c3c7419ca13eedf3fd64d52b90decf3260b524f0338650e399600d3c973d8606"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "201a08d4eeb5e9cc857701c98dd3309e9b540fd772005501d359cee5d327a492"
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
