# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.19.041810"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.19.041810/slatis-darwin-arm64.tar.gz"
    sha256 "5075f6b3c4637245f7ca02cc879b79e42f6a69424b408274c48d6a52473a84f0"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.19.041810/slatis-linux-amd64.tar.gz"
      sha256 "8a45087baa994e85a88cd8ad28ac236b108608f4221f89c1265d41d2720f0a6e"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.19.041810/slatis-linux-arm64.tar.gz"
      sha256 "c3c34db116296d0b871146590ca622cba42c5539d1d4aff6136c10df46cd5e55"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
