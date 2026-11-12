# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.12.205411"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.12.205411/slatis-darwin-arm64.tar.gz"
    sha256 "15885d32669c65c19ccc971faf6d1556f36ac6354ff16a8203c35cc1c9b5e7fb"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.12.205411/slatis-linux-amd64.tar.gz"
      sha256 "8e2c2bf0d2adebc2ce09c47599b2915fd8105bcd15ecaa426f65987301576b9a"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.12.205411/slatis-linux-arm64.tar.gz"
      sha256 "7a445330e706b7d489ff89cd843c5f11dbd13ce8df7502e68dbf788270b694be"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
