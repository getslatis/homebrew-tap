# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.23.000420"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.23.000420/slatis-darwin-arm64.tar.gz"
    sha256 "c72048e8a7f15ddd8262191cd5416b7b1e920a29ce70908ca371d6d78e2320ee"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.23.000420/slatis-linux-amd64.tar.gz"
      sha256 "d939c447ca9a013d0a014473634dad2ffee85c1f9aa8d0e70ebc78fbb1277af7"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.23.000420/slatis-linux-arm64.tar.gz"
      sha256 "e00fd6439e502c0d6490c97fa9896936a8eb1c1064c292685938264f31d00f23"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
