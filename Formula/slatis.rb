# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.27.205301"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.27.205301/slatis-darwin-arm64.tar.gz"
    sha256 "0a6d8ab49d901427245f9441296858d1eac554eb50f38f3c2d81c247fbb9a2f1"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.27.205301/slatis-linux-amd64.tar.gz"
      sha256 "da4efef7bbf9f31b613649a0f8e033d655485a47c0b0d4b4cb16b1222c410b96"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.27.205301/slatis-linux-arm64.tar.gz"
      sha256 "ca5db55bc0be54778a61b44b12d131b5ef487334ac6fd8b323ef981423c3a3f1"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
