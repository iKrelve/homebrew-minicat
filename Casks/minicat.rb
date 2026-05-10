# typed: strict
# frozen_string_literal: true

cask "minicat" do
  version "1.0.109"

  on_arm do
    sha256 "4af2592c014de0aebc62ebd32b9c93acd2620806c000f648c9f1673dd0055037"

    url "https://github.com/iKrelve/minicat-releases/releases/download/v#{version}/MiniCat-#{version}-arm64.dmg"
  end

  name "MiniCat"
  homepage "https://github.com/iKrelve/minicat-releases"

  depends_on macos: ">= :big_sur"

  app "小萨猫.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/小萨猫.app"]
  end

  zap trash: [
    "~/.minicat",
    "~/Library/Application Support/com.minicat.app",
    "~/Library/Caches/com.minicat.app",
    "~/Library/HTTPStorages/com.minicat.app",
    "~/Library/Preferences/com.minicat.app.plist",
    "~/Library/Saved Application State/com.minicat.app.savedState",
    "~/Library/WebKit/com.minicat.app",
  ]
end
