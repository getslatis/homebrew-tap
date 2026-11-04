# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.4.171524"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.4.171524/slatis-darwin-arm64.tar.gz"
    sha256 "b7928e41718ad28cb5cd321963f72c0bce90ea9bd150135b52c6717a2a1b127d"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.4.171524/slatis-linux-amd64.tar.gz"
      sha256 "e44de7113c88777412197eaa993cf75d255befe8a532b2680dbb5529ce36f966"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.4.171524/slatis-linux-arm64.tar.gz"
      sha256 "8c21a9e780b69b4d36816feda58bec666fce0bf91982e66ac9fca544fbf0d114"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
