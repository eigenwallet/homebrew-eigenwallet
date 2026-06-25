cask "eigenwallet" do
  version "4.11.3"

  on_arm do
    sha256 "f7152f28b525d4e31cd879a467eb6d140ea255e84187fd4215edf83afb8b305b"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "640a45aed9a8241c6b9d531eb586b58f83033078114aabba034e8d5205f13325"
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
