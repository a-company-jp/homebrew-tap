# frozen_string_literal: true

# RunThunder Homebrew cask.
# Regenerated on each release by .github/workflows/runthunder-release.yml
# — do not edit version/sha256/url by hand.
cask "runthunder" do
  version "0.1.4"
  sha256 "fe5c21a995521e4e56cd7f6f3d18721fb6f0d55e2d021f6b1d5d4c611c906cef"

  url "https://github.com/a-company-jp/oh-my-blackthunder/releases/download/v0.1.4/RunThunder-0.1.4-macos.zip"
  name "RunThunder"
  desc "RunCat-style macOS menu-bar app with a Black Thunder character (CPU/MEM/NET, Claude usage)"
  homepage "https://github.com/a-company-jp/oh-my-blackthunder"

  depends_on macos: ">= :ventura"

  app "RunThunder.app"

  # The app is ad-hoc signed (not notarized), so strip the quarantine flag
  # after install to avoid Gatekeeper blocking the first launch.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/RunThunder.app"]
  end

  uninstall quit: "io.local.runthunder"

  zap trash: [
    "~/Library/Preferences/io.local.runthunder.plist",
  ]

  caveats <<~EOS
    RunThunder is an unsigned (ad-hoc) menu-bar app. If macOS still blocks it
    on first launch, right-click RunThunder.app in /Applications and choose
    Open, or run:
      xattr -dr com.apple.quarantine /Applications/RunThunder.app
  EOS
end
