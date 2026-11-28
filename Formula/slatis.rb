# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.28.032707"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.28.032707/slatis-darwin-arm64.tar.gz"
    sha256 "5611a8fc7a47bc4f0568de06fdb48b3e2d5fd25ddbfd49be2766cff78b02c0c5"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.28.032707/slatis-linux-amd64.tar.gz"
      sha256 "a36cef48ddd34c98828309941f3de31dee635f499613aac5e54b5f8ecf75863c"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.28.032707/slatis-linux-arm64.tar.gz"
      sha256 "2aa9ce981b1df17117d7f0102ec9ccd511d1191a37accb35a6efe23bbeb91026"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
