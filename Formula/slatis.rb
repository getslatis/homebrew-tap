# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.14.235729"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.14.235729/slatis-darwin-arm64.tar.gz"
    sha256 "f86485680dee81cde9420e10a9d4942709a2e5190eb7911d92524cd7e54ae55d"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.14.235729/slatis-linux-amd64.tar.gz"
      sha256 "56481bd7127b9a9c2185fd1b62a70d17c26474196e6d195c328b7bd74d14a50d"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.14.235729/slatis-linux-arm64.tar.gz"
      sha256 "e73d1d6337d21d3ddf8bd061b474e3a8225ce69a757507ca3148efa75b8572f3"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
