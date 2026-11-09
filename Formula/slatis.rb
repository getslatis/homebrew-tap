# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.9.005019"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.9.005019/slatis-darwin-arm64.tar.gz"
    sha256 "0f7e16094a8b81e01449fc9d94a7c5d4b31bc17edc7406e061f9692722389e98"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.9.005019/slatis-linux-amd64.tar.gz"
      sha256 "57590b6781cf13640ae1b9f42231be67d1ff99f90272730f8b7ed2b227411898"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.9.005019/slatis-linux-arm64.tar.gz"
      sha256 "e5693e7d6a8e952cb5abd685586cff6e19642ecc020309b95c1a496c8786ff19"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
