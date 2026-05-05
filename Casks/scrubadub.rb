cask "scrubadub" do
  version "0.1.1"
  sha256 "9f091a6b231d863b08f9193fa555f05fbe1bfe4757955fa8512d7f00bb189114"

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
