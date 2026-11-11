# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.11.003413"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.11.003413/slatis-darwin-arm64.tar.gz"
    sha256 "dfbd64f076e02615c13e1a71272863ea07e86941b43c72d00058644157a0edc1"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.11.003413/slatis-linux-amd64.tar.gz"
      sha256 "ae230e4462d6bb726d977ae8d7ba42fa4d97bb682e6bf45ed51166ec096fbf0a"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.11.003413/slatis-linux-arm64.tar.gz"
      sha256 "0e6d51fa9c2eb6861bef5a216add21aaa3e36df2f6402feb56c86ac9fb2f52b1"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
