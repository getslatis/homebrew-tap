# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.20.013602"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.20.013602/slatis-darwin-arm64.tar.gz"
    sha256 "4b9cd45806db82b98bba87fb6b1b263f9c0bce45abbe750d5c91e73856d05bea"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.20.013602/slatis-linux-amd64.tar.gz"
      sha256 "8b7cf0f85d6d24e9eed28cff2a3e140cfb53e0428806e007fa8557bfb795a68a"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.20.013602/slatis-linux-arm64.tar.gz"
      sha256 "284bc43e94dde0d9e1b4fa63e9c764876d9ecc6dd810fc7d6ff5c0f714161c09"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
