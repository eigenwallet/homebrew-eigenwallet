cask "eigenwallet" do
  version "3.6.6"

  on_arm do
    sha256 "cf63dfee055a2c74c76d085b1c36c451d3a9d5686ba2f0f544699eabe0ed882d"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "3a76beb399d7066b065290334a0d11e15199d6d9dda899d11e6f56314306a851"
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
