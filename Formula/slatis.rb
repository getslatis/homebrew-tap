# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.9.005846"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.9.005846/slatis-darwin-arm64.tar.gz"
    sha256 "71f6b981ca8427ab9631724b96a5947457a63cc7729e2f9e5d9c1f359f3862e4"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.9.005846/slatis-linux-amd64.tar.gz"
      sha256 "56a03e428f73f99ecfb63691d49caca6cdf8c03f0c79908f9095c623779d7273"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.9.005846/slatis-linux-arm64.tar.gz"
      sha256 "a4fe3150e5622dd40ac1e1ac89833788926421a32151128d86f7e073982ce67f"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
