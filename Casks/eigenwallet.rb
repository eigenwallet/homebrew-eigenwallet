cask "eigenwallet" do
  version "3.6.1"

  on_arm do
    sha256 "6f606a23aa2d8d9a2f996de878fd57b4cfdd933ae3a4b712507ed0e31616d54c"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "858b528176fd361b777f3e9bdc5dd705ec43d6bcf113cd5d2bdf2a5e7a37e76d"
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
