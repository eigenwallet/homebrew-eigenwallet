cask "eigenwallet" do
  version "4.5.3"

  on_arm do
    sha256 "8553fc1ef1781db2bf6e508837e7ad367292e99a033109b890398d5bcb9eab5b"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "5cc1524b8543d5a2b4f707182b40606bc56550828e37a87a1d0b817a2fd84f15"
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
