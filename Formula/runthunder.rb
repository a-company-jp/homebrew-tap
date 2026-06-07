# typed: false
# frozen_string_literal: true

# RunThunder Homebrew formula.
# This file is regenerated on each release by
# .github/workflows/runthunder-release.yml — do not edit url/sha256 by hand.
class Runthunder < Formula
  desc "RunCat-style macOS menu-bar app with a Black Thunder character (CPU/MEM/NET, Claude usage)"
  homepage "https://github.com/a-company-jp/oh-my-blackthunder"
  url "https://github.com/a-company-jp/oh-my-blackthunder/releases/download/v0.1.0/RunThunder-0.1.0-macos.tar.gz"
  sha256 "e18d7d2485ca9d7c69b95c778b8e58ee3226396392e5cf1f579bd7fa34136796"
  version "0.1.0"

  depends_on :macos

  def install
    bin.install "RunThunder"
  end

  def caveats
    <<~EOS
      RunThunder is a menu-bar (LSUIElement) app. Launch it from the binary:

        runthunder

      It lives in the macOS menu bar (no Dock icon). To run it at login,
      use the app's own "ログイン時に起動" (Launch at Login) toggle, or add
      $(brew --prefix)/bin/runthunder to your login items.
    EOS
  end

  test do
    assert_predicate bin/"RunThunder", :executable?
  end
end
