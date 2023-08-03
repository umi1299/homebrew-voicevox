cask "voicevox-preview" do
  version "0.15.0-preview.3"
  sha256 "5584c1c3ce8b32a58ccd7c8744aaeb00de484d36fe5e49a2b6721e033232ba64"

  url "https://github.com/VOICEVOX/voicevox/releases/download/#{version}/voicevox-macos-cpu-#{version}.zip",
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
