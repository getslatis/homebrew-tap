# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.31.000445"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.31.000445/slatis-darwin-arm64.tar.gz"
    sha256 "b6169b6ee0ec8a5446586cf9cf06d6158c5a38c376861ab3ebd6598b6d1124cf"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.31.000445/slatis-linux-amd64.tar.gz"
      sha256 "12f13dad30fe9786c7ee37e2c17464139b175d4934a6d1b52f9bccdd5d02b715"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.31.000445/slatis-linux-arm64.tar.gz"
      sha256 "d6ca399eb368a5cf5b3e0a06b65e31ae60e3190b40042c21c31a69373ec4f456"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
