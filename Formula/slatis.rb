# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.12.200556"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.12.200556/slatis-darwin-arm64.tar.gz"
    sha256 "9c2fb3b176424b67a5c3e10cdbd09cdcde35d45bf3b6552b271aa612a3ec0e9c"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.12.200556/slatis-linux-amd64.tar.gz"
      sha256 "6c8f8fa440ab7876535026b99f19fb0787ea34fde5c0c33f90ddbc6871bc9a62"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.12.200556/slatis-linux-arm64.tar.gz"
      sha256 "c79df37e55b678a075e3de8c8a807b6fc78b755e0bed7d963c9bde7751f2b97a"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
