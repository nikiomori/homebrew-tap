cask "kelp" do
  version "0.11.0"
  sha256 "213cb3d55e3643a2061aa2e02b8f6b9fa8f40f248e83ae939caa47701cc946bc"

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
