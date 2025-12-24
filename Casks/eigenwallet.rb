cask "eigenwallet" do
  version "3.6.3"

  on_arm do
    sha256 "b94551da972b30f686549930db435b58c6894b390baeefc8b91d23c1279a5288"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "1b04019cc466efb355b4866b294d0e8addf6cb5d29609b11a3625ee634e162e9"
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
