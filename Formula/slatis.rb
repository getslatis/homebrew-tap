# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.4.190608"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.4.190608/slatis-darwin-arm64.tar.gz"
    sha256 "f2f720c56554bbfe7c89211f860ec93ddc3c9fad7d7d072a75f66279862c60c9"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.4.190608/slatis-linux-amd64.tar.gz"
      sha256 "c019c21f0bd20ff4d3bf0802237b9dd70bb167355bdc2d0164aaef52e5828d4c"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.4.190608/slatis-linux-arm64.tar.gz"
      sha256 "188e2e9662782b3c573bd26ff6e05e00d3943ce54af2a58b11324547eb56ed8f"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
