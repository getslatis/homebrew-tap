# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.23.015220"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.23.015220/slatis-darwin-arm64.tar.gz"
    sha256 "9e3a4e5df88c8b25827a4cace91ce108b9dbdd8aaae64f1ed7577f974c1713be"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.23.015220/slatis-linux-amd64.tar.gz"
      sha256 "43abb7cdaf1b506ef305af1446b6bc64e0c3982f00753161892e35316d2d62a5"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.23.015220/slatis-linux-arm64.tar.gz"
      sha256 "daa27b964dfdb1df1d9ad67556694da039763d9b77f05f74d6429f06b8ada953"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
