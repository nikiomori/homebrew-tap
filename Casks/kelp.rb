cask "kelp" do
  version "0.14.0"
  sha256 "6125c9751169efa9764ef008da9ad86d354e1bcb3080113aa9e4c6661f21e9ca"

  url "https://github.com/nikiomori/kelp/releases/download/v#{version}/Kelp.dmg"
  name "Kelp"
  desc "Native IDE for coding agents"
  homepage "https://github.com/nikiomori/kelp"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Kelp.app"
  binary "#{appdir}/Kelp.app/Contents/MacOS/kelp"

  zap trash: [
    "~/.kelp",
    "~/Library/Caches/dev.kelp.app",
    "~/Library/HTTPStorages/dev.kelp.app",
    "~/Library/HTTPStorages/dev.kelp.app.binarycookies",
    "~/Library/Preferences/dev.kelp.app.plist",
    "~/Library/Saved Application State/dev.kelp.app.savedState",
    "~/Library/WebKit/dev.kelp.app",
  ]
end
