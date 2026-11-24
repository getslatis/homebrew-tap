# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.24.010017"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.24.010017/slatis-darwin-arm64.tar.gz"
    sha256 "be206e0481213ff08a15083a8689b86bcd2b8499c76c9503fd4eff8001fe482f"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.24.010017/slatis-linux-amd64.tar.gz"
      sha256 "82392aeee10b1d3d35316a1cb6f35fae483e86253ae83363acf33b8527916fa7"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.24.010017/slatis-linux-arm64.tar.gz"
      sha256 "24c6b5babbd17a75768c3bf6f52bdaa5ac91f3f0e9ebd4007a3e9703b5081939"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
