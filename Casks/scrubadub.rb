cask "scrubadub" do
  version "0.3.0"
  sha256 "b6fa26a85ee11a23daa6ff2d4e5423952ba85c2d433f56c712ec49a3b39dcfcf"

  url "https://github.com/steven-haddix/scrub-a-dub/releases/download/v#{version}/Scrubadub-#{version}.zip"
  name "Scrubadub"
  desc "Menu bar app and CLI for cleaning padded LLM terminal output"
  homepage "https://github.com/steven-haddix/scrub-a-dub"

  app "Scrubadub.app"
  binary "#{appdir}/Scrubadub.app/Contents/Helpers/scrubadub"

  zap trash: [
    "~/Library/Application Support/Scrubadub",
    "~/Library/Preferences/com.stevenhaddix.scrubadub.plist",
  ]
end
