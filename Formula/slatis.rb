# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.19.215457"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.19.215457/slatis-darwin-arm64.tar.gz"
    sha256 "c346f5d7f93e03b697cdec2de2caccf2b1f53468e0b10596c0ac7550d41b27f8"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.19.215457/slatis-linux-amd64.tar.gz"
      sha256 "6463c81b64c8d01bee7ec2bf10af76fe99900d1a5de7a95c2b00c5571fccf5ce"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.19.215457/slatis-linux-arm64.tar.gz"
      sha256 "89bf3b5aef7ab7079ae99f46e8efe0583f34c7bd27dadd502285647cf82a4988"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
