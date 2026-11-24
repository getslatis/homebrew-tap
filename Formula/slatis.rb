# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.24.040652"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.24.040652/slatis-darwin-arm64.tar.gz"
    sha256 "ff5b044f1accc9a3066ac762cfb3a62742bc8ec21e4404548ce77ba19e4b32fa"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.24.040652/slatis-linux-amd64.tar.gz"
      sha256 "b1e9ede3f1a41cd94416a4b3690d60e0228564db8dd61d7f006c3ddf737f16d8"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.24.040652/slatis-linux-arm64.tar.gz"
      sha256 "0226d815ed1251b5b54a7728ed18c55f9674bbbc0819f70c7b31cb5e361d00a6"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
