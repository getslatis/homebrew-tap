# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.19.181043"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.19.181043/slatis-darwin-arm64.tar.gz"
    sha256 "e43e25be9afbd5d33a46a4d1ee44b3fa34f0e5afa1191f523599288b841b8ee3"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.19.181043/slatis-linux-amd64.tar.gz"
      sha256 "f9b57b716dfb0d28a4a5677e4139b7da06efe3e3667dfbfcff90704dbd8173a7"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.19.181043/slatis-linux-arm64.tar.gz"
      sha256 "b920fe63b3a39fa29b1e38c1cdf011cbd068084cf83f1299c5815e0b21ed6e83"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
