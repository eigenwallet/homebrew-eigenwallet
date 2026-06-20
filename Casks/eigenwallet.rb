cask "eigenwallet" do
  version "4.10.0"

  on_arm do
    sha256 "ff57cd00f8c51e56b0d03119042990e9218846358f3c8c73927bfc1bf24b8c18"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "06f139969297a5e489c7c7b8a3f49dfdfaa8e0d78cb59cba826f560cc4544a66"
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
