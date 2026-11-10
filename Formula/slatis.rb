# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.10.023437"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.10.023437/slatis-darwin-arm64.tar.gz"
    sha256 "e81bc728844b1e20a7e8f50d0f130599ed56b39e5cdb51628d380cee6e3d75c3"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.10.023437/slatis-linux-amd64.tar.gz"
      sha256 "474201df335ceeca3301b53712ed3cac262d0108d2e172cbde508989ac794093"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.10.023437/slatis-linux-arm64.tar.gz"
      sha256 "62e041b0890f7d87598ea907a8214152abfc4d0eb7e2b18d3e2404eb8f82518a"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
