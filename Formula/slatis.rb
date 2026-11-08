# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.8.054830"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.8.054830/slatis-darwin-arm64.tar.gz"
    sha256 "dcd2452ace1b156e979886dd1acb5595320f6977bbdbdbe1876fa60b8636454a"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.8.054830/slatis-linux-amd64.tar.gz"
      sha256 "3b0fefb6b2210f8935d24a492a2da972942c573442b3ce6ec7c4ab25eff53828"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.8.054830/slatis-linux-arm64.tar.gz"
      sha256 "32454e1a7270098b8e6111d2e9a281116cafef8a0d95bcd0a5e467f7254362ac"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
