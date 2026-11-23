# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.23.020332"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.23.020332/slatis-darwin-arm64.tar.gz"
    sha256 "b901c12c08f7a733042ce8f7ab2f52914afc23b93a1118b9ae1f602348e4a183"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.23.020332/slatis-linux-amd64.tar.gz"
      sha256 "ee1451f7afcbc19a99836dbe6ac8e069232f17fb82f19a452e7ca6e238777fdb"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.23.020332/slatis-linux-arm64.tar.gz"
      sha256 "c5c0119431ec267bd7452125f040c45ff60743b3e5679ce024d103fa9cd4b0fe"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
