# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.18.063734"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.18.063734/slatis-darwin-arm64.tar.gz"
    sha256 "f941004ea92bf6afcc258d8e6101af3bc176542098d2974f44395943ddb78a07"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.18.063734/slatis-linux-amd64.tar.gz"
      sha256 "1a2db465b623acbb50cdb048265459ffbd6e4e7314f2dcb898d40568b8d03a2c"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.18.063734/slatis-linux-arm64.tar.gz"
      sha256 "a92979a360db303303560123a5d75cece8c4d0e15b3bce88d43468409def6cab"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
