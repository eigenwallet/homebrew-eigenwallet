cask "eigenwallet" do
  version "4.2.4"

  on_arm do
    sha256 "d3dc64573a620f6bd791f60769802dc323f6683d0e4cbcdfb2b17c170f50ebb4"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "792783b6d86ab7e44903b858223be24362f503e7374ae7c16ce42fe23932339b"
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
