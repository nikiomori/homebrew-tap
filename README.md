# homebrew-tap

Homebrew casks for [Pretype](https://github.com/nikiomori/Pretype) — local-LLM
inline autocomplete for every macOS text field (Apple Silicon, macOS 14+).

```bash
brew install --no-quarantine nikiomori/tap/pretype
```

`--no-quarantine` skips the Gatekeeper "Open Anyway" step — Pretype releases
are ad-hoc signed, not notarized. To apply it to every upgrade automatically:

```bash
export HOMEBREW_CASK_OPTS="--no-quarantine"
```

The cask is bumped automatically by Pretype's release workflow.
