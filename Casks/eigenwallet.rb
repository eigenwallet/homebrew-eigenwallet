cask "eigenwallet" do
  version "4.9.5"

  on_arm do
    sha256 "4fbae383af1659c1cabcfe4ecfb460376413da1cdbebdd7bf60b966f2d652e12"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "8ba750ad36d5ee8b3280e418416a851aa3a22b0e87082b2848038fd7cfc4b6af"
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
