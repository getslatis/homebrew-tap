# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.17.004058"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.17.004058/slatis-darwin-arm64.tar.gz"
    sha256 "f7b5329240007813733bf64669952fc0ac9199a88d350419eecd452e836dd286"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.17.004058/slatis-linux-amd64.tar.gz"
      sha256 "b83c9aa93e33b0b2afa7c41211d2389a9eb81a26e86993c27b54f3b102159ac4"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.17.004058/slatis-linux-arm64.tar.gz"
      sha256 "2cf2856eef0845d40bf02d39aebb7ff41d245ffe58e6b9b363f5287404ed1c03"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
