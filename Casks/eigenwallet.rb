cask "eigenwallet" do
  version "4.8.4"

  on_arm do
    sha256 "16345c10f4adb9d82f1c44810592a9bcc773be629d6f7bc3be36abdb1dc7b9e6"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "9d79444c2d10baf774cc4b915bfcf6a11b3eb14d80f457f9bc27ed5fedbd85c5"
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
