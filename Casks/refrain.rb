cask "refrain" do
  version "0.1.1"
  sha256 "7f7f5ca954ff24e4e9b2c569137eae3eb3e06e9659dd7a8b664ccba068e8eef1"

  url "https://github.com/nikiomori/Refrain/releases/download/v#{version}/Refrain-#{version}.zip"
  name "Refrain"
  desc "On-device speech-to-text engine behind OpenAI's transcription API"
  homepage "https://github.com/nikiomori/Refrain"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Refrain.app"

  zap trash: "~/Library/Preferences/dev.nikiomori.refrain.plist"
end
