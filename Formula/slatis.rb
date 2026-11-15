# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.15.203043"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.15.203043/slatis-darwin-arm64.tar.gz"
    sha256 "aa74099330c13fa42ad6bfba0e1dc786bd5ba43526b6ea357e8ba8b81825f6d5"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.15.203043/slatis-linux-amd64.tar.gz"
      sha256 "4b0882696ffe2294ee1596f23d152a3697b211cc197cc2115921672f403c936a"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.15.203043/slatis-linux-arm64.tar.gz"
      sha256 "2ba11856fd638061b74b7d5a6eb8e0a8ca787fe73259244876323dee3d307df6"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
