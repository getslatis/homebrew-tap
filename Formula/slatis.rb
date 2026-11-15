# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.15.230428"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.15.230428/slatis-darwin-arm64.tar.gz"
    sha256 "917725889f94f4c82fdd0bfed4ed3c3b7b2a9ab2d5af740212600af9f5a63ad3"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.15.230428/slatis-linux-amd64.tar.gz"
      sha256 "be0b8e77b3de3ecfb2d2464844c8fa589c022390c4571438d2409d855bb0582b"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.15.230428/slatis-linux-arm64.tar.gz"
      sha256 "06871015bc75ffd23b225287cce6b03bc26b5fce023e04dc40179f3ee2238695"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
