cask "eigenwallet" do
  version "4.0.0"

  on_arm do
    sha256 "54e1d208bddc2a0a585fc211e125a3aad5fade7dddf751e8b9807a73a877e905"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "ca08439025da4e0adfcd25f0525aee4b32866b653483ca36c57c72dd48f13a99"
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
