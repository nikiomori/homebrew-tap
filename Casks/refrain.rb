cask "refrain" do
  version "0.1.0"
  sha256 "faa044c08a732baf1d1749917d4bfe8a9ffddb08ed0e0c8c69b93c6e507544ab"

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
