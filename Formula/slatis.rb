# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.16.235352"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.16.235352/slatis-darwin-arm64.tar.gz"
    sha256 "68f474b057da8fc247277caa5ffce53acb9848d9d51131c1f652b061553612b8"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.16.235352/slatis-linux-amd64.tar.gz"
      sha256 "67135a0ee925b4204679dd3f85abf7f59595637655923a3f8faf166378f78467"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.16.235352/slatis-linux-arm64.tar.gz"
      sha256 "46f8a11df3ac277109e4d21b792396d5072f085ea1eef95c141fa6d25d1f62b8"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
