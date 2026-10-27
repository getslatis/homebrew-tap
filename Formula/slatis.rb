# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.27.031359"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.27.031359/slatis-darwin-arm64.tar.gz"
    sha256 "d1f3864c2f54612a157e8225d31d275eea54b6feb47cb7a6755517a31d0da79b"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.27.031359/slatis-linux-amd64.tar.gz"
      sha256 "df04e43eeb863e8f328c6b835270424d5ebddb2570c472c68446013be480dd91"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.27.031359/slatis-linux-arm64.tar.gz"
      sha256 "126268af324c77062caaef8a0b16769d0785cbc774c23d9fd50c6f82be695be7"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
