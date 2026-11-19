cask "kelp" do
  version "0.18.0"
  sha256 "a92ccce44228212198229e52b62d0a4092c1557d02f57b0b1c97f5e598232633"

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
