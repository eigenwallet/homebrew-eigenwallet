cask "eigenwallet" do
  version "3.2.1"

  on_arm do
    sha256 "bef45f413114ed826bbe56336257f2b708985874e922b3dc6e3e1e8095d82ba9"
    url "https://github.com/eigenwallet/core/releases/download/#{version}/eigenwallet_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "6971e91579c5901c72289fd7b8e268fa3318d26b033cb473858c3ec474b4ab2b"
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
