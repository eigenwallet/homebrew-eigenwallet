cask "eigenwallet" do
  version "3.7.0"

  on_arm do
    sha256 "7042112755d62aea0818a3585ff41132ef2db8ab12debb19edca7dfe4f901f19"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "d0fbd353228205f0d42173e36d6e77a4973164d0bf2ecd3a46d463ee56004c20"
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
