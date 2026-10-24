# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.24.063104"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.24.063104/slatis-darwin-arm64.tar.gz"
    sha256 "fbce9123c832ab1bf69cbd7451cc3507fd387825e7c28bb0ea6e7931064a6af0"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.24.063104/slatis-linux-amd64.tar.gz"
      sha256 "2b9391d929010cf306537389ad5bc6f1c708c8ca73f885f97d6f18b6e3fbc86f"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.24.063104/slatis-linux-arm64.tar.gz"
      sha256 "db250d2eb86cf5ca3dc75cb83f6d9bafbfff1168ccdc261e6597a30a781342dc"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
