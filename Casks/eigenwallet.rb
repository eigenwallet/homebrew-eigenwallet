cask "eigenwallet" do
  version "4.9.1"

  on_arm do
    sha256 "93fe98458ffe0e3fa65eee3edc6b0199e75869e7afb7c0cdd5c5d2dda12009a1"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "9c033d3738e7a03023e4cf838daa03692e73c0b0b63181acfa3bc4e41a1b4e57"
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
