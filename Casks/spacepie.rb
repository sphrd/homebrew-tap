cask "spacepie" do
  version :latest
  sha256 :no_check

  url "https://github.com/sphrd/SpacePie/releases/latest/download/SpacePie-macOS.dmg"
  name "SpacePie"
  desc "Fast, free and open-source disk space analyzer and cleaner"
  homepage "https://sphrd.github.io/SpacePie/"

  depends_on macos: ">= :big_sur"

  app "SpacePie.app"

  zap trash: [
    "~/Library/Application Support/SpacePie",
    "~/Library/Preferences/com.sphrd.SpacePie.plist",
    "~/Library/Saved Application State/com.sphrd.SpacePie.savedState",
  ]

  caveats <<~EOS
    SpacePie is not signed with an Apple Developer ID yet. If macOS blocks the first
    start, right-click SpacePie in Applications, choose Open, then Open again.
    SpacePie updates itself (Check for updates in the app menu).
  EOS
end