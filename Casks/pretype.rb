cask "pretype" do
  version "2.9.0"
  sha256 "5054aacde3bc76e500674be87fbdf2746eab9e946fe387ffed35005dcb3b62a4"

  url "https://github.com/nikiomori/Pretype/releases/download/v#{version}/Pretype.app.zip"
  name "Pretype"
  desc "Inline autocomplete for every macOS text field, powered by local models"
  homepage "https://github.com/nikiomori/Pretype"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "Pretype.app"

  caveats <<~EOS
    Upgrading from 2.4.0 or earlier: re-grant Accessibility once (System
    Settings -> Privacy & Security -> Accessibility). Those builds were ad-hoc
    signed; 2.5.0 and later are notarized and keep the grant across upgrades.

    Downloaded models live in the shared Hugging Face cache
    (~/.cache/huggingface); remove them via Settings -> Model.
  EOS

  zap trash: [
    "~/Library/Application Support/Pretype",
    "~/Library/Preferences/app.pretype.Pretype.plist",
  ]
end
