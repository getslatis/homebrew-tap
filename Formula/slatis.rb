# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.29.065735"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.29.065735/slatis-darwin-arm64.tar.gz"
    sha256 "0970b6e62ad019e30129f78860479a46fc852610c5270d26f2f6da4fbb064df7"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.29.065735/slatis-linux-amd64.tar.gz"
      sha256 "814e3c2093f39754595e411ddf2974b4351d93f6260da2e172638dce8c71563f"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.29.065735/slatis-linux-arm64.tar.gz"
      sha256 "55ee08581ccbd9a96d3d88914727d98bcc0afe7da7c26935375c1d00e086f928"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
