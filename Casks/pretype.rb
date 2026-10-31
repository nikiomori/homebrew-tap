cask "pretype" do
  version "2.10.0"
  sha256 "381a7f110b6261d66abe03445f90fdef68cf3542641be8a1bb6183c6e2c832a2"

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
