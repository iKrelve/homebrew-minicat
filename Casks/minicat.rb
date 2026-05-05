# typed: strict
# frozen_string_literal: true

cask "minicat" do
  version "1.0.80"

  on_arm do
    sha256 "082d499a68397a94bb9d4f3e75d3b86eab5cc73927f65f38177a5aa56c303287"

    url "https://github.com/iKrelve/minicat-releases/releases/download/v#{version}/MiniCat-#{version}-arm64.dmg"
  end

  name "MiniCat"
  homepage "https://github.com/iKrelve/minicat-releases"

  no_quarantine
  depends_on macos: ">= :big_sur"

  app "小萨猫.app"

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
