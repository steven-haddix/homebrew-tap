cask "scrubadub" do
  version "0.1.0"
  sha256 "fa29d81ed0cd0b4879c626442be141849ccfbede4ae4c2d9dfef1afee37e67b9"

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
