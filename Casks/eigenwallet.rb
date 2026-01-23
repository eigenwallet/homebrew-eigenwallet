cask "eigenwallet" do
  version "3.6.7"

  on_arm do
    sha256 "c0405bfe1650445791aec315fd686f305a70afd200f9079ff03afa9a2353ee13"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "fd6d18a36af43265e329bd13f935da5eb70dc1c5e266446fb96c1db827591768"
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
