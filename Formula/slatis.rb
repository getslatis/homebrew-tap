# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.30.005811"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.30.005811/slatis-darwin-arm64.tar.gz"
    sha256 "3658809bdb246f7f4e81e4caa8510036b4fafb769955c9923b9b5104c950c52a"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.30.005811/slatis-linux-amd64.tar.gz"
      sha256 "cc8d3f203e6c51bb7ca31ce3e8aaa11010bb7a6ff1481fbf77b46a1cf6754ed5"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.30.005811/slatis-linux-arm64.tar.gz"
      sha256 "2dfc10d6382df2b1e55b2de2009b8d6ba9d73f499bc578b39eb545d37f08fd9d"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
