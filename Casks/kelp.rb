cask "kelp" do
  version "0.15.0"
  sha256 "2ab8767e362c71bd42c236eb950de3956ed1c6c48b9158c9af89c8d091499781"

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
