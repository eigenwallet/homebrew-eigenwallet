cask "eigenwallet" do
  version "4.6.7"

  on_arm do
    sha256 "1c2817277c2f5e9977cc428ac9ede6a7b209e9a4b9a470f217e8e23c6ba602ec"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "409772fe35f81c673177a52ff61ae742936eb89e68666055fe97ed98054f38cc"
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
