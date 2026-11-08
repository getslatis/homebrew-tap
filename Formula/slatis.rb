# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.8.075534"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.8.075534/slatis-darwin-arm64.tar.gz"
    sha256 "0f534a325218b51e2fc23a150aabc2c9797c086dc30b8ad03d1271dea715c468"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.8.075534/slatis-linux-amd64.tar.gz"
      sha256 "f80a889704ddbbae019e55ffa673e5aabc28b14123ad180ad6de7fadc7250be9"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.8.075534/slatis-linux-arm64.tar.gz"
      sha256 "6382406b45b8ea77d7dc6ccf256277e19920bea84c15232d0395e0dcf37919a8"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
