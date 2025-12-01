cask "eigenwallet" do
  version "3.3.8"

  on_arm do
    sha256 "a62114bc763fd041cf80b170b463ad9884b76fee6aa2baa7407cda73ed98b0fb"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "9656ffaca172a42d1ad1e0e001369c892da607a24e8a182c0d1db83a43741f8a"
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
