# homebrew-tap

[Homebrew](https://brew.sh) tap for **a-company-jp** tools.

## RunThunder

A RunCat-style macOS menu-bar app featuring a Black Thunder character that
animates with your CPU / memory / network activity (and Claude usage).

```bash
brew tap a-company-jp/tap
brew install runthunder
```

Then launch it:

```bash
runthunder
```

It lives in the macOS menu bar (no Dock icon). Use the app's own
「ログイン時に起動」(Launch at Login) toggle to start it automatically.

---

> The `Formula/runthunder.rb` formula in this repo is **generated automatically**
> on every release by the
> [`runthunder-release`](https://github.com/a-company-jp/oh-my-blackthunder/blob/main/.github/workflows/runthunder-release.yml)
> workflow in [oh-my-blackthunder](https://github.com/a-company-jp/oh-my-blackthunder).
> Do not edit `url` / `sha256` by hand.
