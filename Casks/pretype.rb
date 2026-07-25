cask "pretype" do
  version "2.3.0"
  sha256 "45e1965475c2f84e3e2396d823805f0661585ebf00da6868602958f1c3f359a4"

  url "https://github.com/nikiomori/Pretype/releases/download/v#{version}/Pretype.app.zip"
  name "Pretype"
  desc "Inline autocomplete for every macOS text field, powered by local models"
  homepage "https://github.com/nikiomori/Pretype"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Pretype.app"

  caveats <<~EOS
    Pretype releases are ad-hoc signed, not notarized:
      - install with --no-quarantine to skip the Gatekeeper "Open Anyway" step
      - re-grant Accessibility after each upgrade (System Settings -> Privacy
        & Security -> Accessibility) — the code signature changes per release

    Downloaded models live in the shared Hugging Face cache
    (~/.cache/huggingface); remove them via Settings -> Model.
  EOS

  zap trash: [
    "~/Library/Application Support/Pretype",
    "~/Library/Preferences/app.pretype.Pretype.plist",
  ]
end
