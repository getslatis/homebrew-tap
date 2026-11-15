# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.15.000900"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.15.000900/slatis-darwin-arm64.tar.gz"
    sha256 "42c99ead8b3f265f67e079357e24db30ede9e7aa679f4496741f92385898a642"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.15.000900/slatis-linux-amd64.tar.gz"
      sha256 "b240be494fb8edd7449eac8e5ed02e5118545b403aea4fe53fd81752e5dc2cd1"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.15.000900/slatis-linux-arm64.tar.gz"
      sha256 "04e0952aa2ddab641f1a4ce8dc9e692527fddae570c5f72cec5f6924382467f9"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
