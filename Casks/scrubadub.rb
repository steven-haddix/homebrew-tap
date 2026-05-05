cask "scrubadub" do
  version "0.2.0"
  sha256 "0fb775cad2cf649449fe73a29da1b93e101855c0dfccfad924dae9c4ed9026e2"

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
