# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.9.001342"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.9.001342/slatis-darwin-arm64.tar.gz"
    sha256 "ea48f6cfe953df42190f05be34532e16cdb3c831d84ed6b981467f478672bffc"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.9.001342/slatis-linux-amd64.tar.gz"
      sha256 "ed1937251c65ea8888e3d46a08b8ede3c6c4df458ff6e92ba03c569ad3d7969f"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.9.001342/slatis-linux-arm64.tar.gz"
      sha256 "d0a6787ca7b19c3fbc017ea8a55888708e9ba46effe446b622ae78a02b971c29"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
