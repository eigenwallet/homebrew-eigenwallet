cask "eigenwallet" do
  version "3.2.9"

  on_arm do
    sha256 "5212116e07544f70e72b5892e3191467ce1a048ec9193babf9107eba6d39af05"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "df781309b3832027d31f9897b73a8266d42e5b22207864bf2cc06d7909702204"
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
