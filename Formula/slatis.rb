# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.8.233900"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.8.233900/slatis-darwin-arm64.tar.gz"
    sha256 "b709fd5db3abca0b2cb49f423f95c371289a1f05b869861e64f7bdf69ed272a8"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.8.233900/slatis-linux-amd64.tar.gz"
      sha256 "64c1f653891e6451d5e24702bb600f26b656d3ff05523e35afbd6f65ca4b2530"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.8.233900/slatis-linux-arm64.tar.gz"
      sha256 "582044347cf50255b72e3b3e161cdb4120443359091682da01cf6788806f25cf"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
