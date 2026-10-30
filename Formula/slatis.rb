# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.30.065209"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.30.065209/slatis-darwin-arm64.tar.gz"
    sha256 "fae8d936e91d39439c5db9ccc4c2debe951f2f67221e589c9f846c02cde93366"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.30.065209/slatis-linux-amd64.tar.gz"
      sha256 "797d5813f5f239fff7fcd5365b062f4ba7ff50efc6408eff6750827875f9ab3c"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.30.065209/slatis-linux-arm64.tar.gz"
      sha256 "d40d637c7fc7ed55b95cccdf1db3d8f6a3bb197a9751d0060817f2e8ad1b79a7"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
