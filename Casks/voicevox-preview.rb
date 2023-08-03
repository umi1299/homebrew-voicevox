cask "voicevox-preview" do
  version "15.0-preview.3"
  sha256 "6da0518dfb3aa00e588fa839ebccff0339b627824ccd038304e8dbfcd751dbf1"

  url "https://github.com/VOICEVOX/voicevox/releases/download/0.#{version}/VOICEVOX.dmg",
      verified: "github.com/VOICEVOX/voicevox/"
  name "VOICEVOX"
  desc "Free, medium-quality text-to-speech software"
  homepage "https://voicevox.hiroshiba.jp/"

  livecheck do
    url "https://github.com/VOICEVOX/voicevox/releases?q=prerelease%3Atrue&expanded=true"
    regex(/(\d+(?:\.\d+)*-preview\.\d+)$/i)
  end

  conflicts_with cask: "voicevox"

  app "VOICEVOX.app"

  zap trash: [
    "~/Library/Application Support/voicevox",
    "~/Library/Application Support/voicevox-cpu",
    "~/Library/Application Support/voicevox-engine",
    "~/Library/Logs/voicevox-cpu",
    "~/Library/Preferences/jp.hiroshiba.voicevox.plist",
    "~/Library/Saved Application State/jp.hiroshiba.voicevox.savedState",
  ]
end
