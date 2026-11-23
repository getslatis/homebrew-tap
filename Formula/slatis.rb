# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.23.014025"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.23.014025/slatis-darwin-arm64.tar.gz"
    sha256 "4c004c02bd2cf86e817c477db55c443577b89d2afe7da3bf694ac28752fa8ee2"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.23.014025/slatis-linux-amd64.tar.gz"
      sha256 "a2c8e32fad952f70cae9fd1159e25a4a2a402f0a5ad636211ba6f68a507170ee"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.23.014025/slatis-linux-arm64.tar.gz"
      sha256 "0929f3d0506bd9697fd52cef17f56905aa8402c43a30be147fb1baa23aebd269"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
