cask "eigenwallet" do
  version "4.8.1"

  on_arm do
    sha256 "1c565f000e12a4f76b4eb016e6535e93e4231dbb090fae9b8203808262a95ebe"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "6559c446d2b88693454dc83d795ec114ce374e5b29d432cda34c6fcec8a7efe8"
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
