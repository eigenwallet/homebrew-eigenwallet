cask "eigenwallet" do
  version "4.7.8"

  on_arm do
    sha256 "48130a2daabae8b8cf1ea620a07134c63089f426ea236775da07c9955bf4c7ab"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "0d585df3b47b9bc744687dfc6a7c6f45d85bc798893c8c07036d4f38f476e149"
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
