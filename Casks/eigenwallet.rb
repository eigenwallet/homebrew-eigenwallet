cask "eigenwallet" do
  version "4.0.4"

  on_arm do
    sha256 "74542efac60fa73727cf1b8057f54cf485ba9820c810827b6d72526a60b00ccb"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "bba6bd18fef72d43f5629dad21d9a62a7cc4b870a9aad552660d9cf5d9c48954"
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
