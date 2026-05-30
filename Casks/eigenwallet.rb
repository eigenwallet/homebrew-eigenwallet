cask "eigenwallet" do
  version "4.7.9"

  on_arm do
    sha256 "91b688dfa886f06f77dbd576d129ad2b4edc057b95043ee2d7fe586e5ae3cfee"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "137e8984605e65c0423dea71a3c8a245ffaf562759e2cbbbdcdb4fc332530d60"
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
