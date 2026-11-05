# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.5.045737"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.5.045737/slatis-darwin-arm64.tar.gz"
    sha256 "88aebf05274fdf6a84b88b89dcececb5072263dc8503fa6ea7fb3dc0f48c70fc"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.5.045737/slatis-linux-amd64.tar.gz"
      sha256 "960b3cd886bb2aa4d442877749957b30ea848b4f4ff2c3d6fce30aeec35041dc"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.5.045737/slatis-linux-arm64.tar.gz"
      sha256 "c73c95680ad520d3bdba859718575e6f4a46ea67cab4454150b48a70ae56783a"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
