cask "mikko" do
  version "0.1.0"
  sha256 "bb11505a9cbd5b9f5a084fa76342f5832f8aad459ac8b559e2a30078d422b207"

  url "https://github.com/Anemo-Studio/mikko-app/releases/download/v#{version}/mikko-#{version}.zip"
  name "mikko"
  desc "See and stop what your AI coding agents left running, and reclaim dev disk space"
  homepage "https://mikko.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "mikko.app"
  binary "#{appdir}/mikko.app/Contents/Helpers/mikko"

  zap trash: [
    "~/Library/Application Support/mikko",
    "~/Library/Preferences/app.mikko.Mikko.plist",
  ]
end
