# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.30.220919"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.30.220919/slatis-darwin-arm64.tar.gz"
    sha256 "512c497dd1c397223eb3a06220f7dbc3abfedda6659e62d60fa8b2aaefd4d8fc"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.30.220919/slatis-linux-amd64.tar.gz"
      sha256 "e62dffcb95a8851553dd6b7bc1a2eb353d1156c4aac7939cf0a92d47c7cf8ff2"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.30.220919/slatis-linux-arm64.tar.gz"
      sha256 "57dcc009bba771c58383e5cfb78aeb3ab3de357d339fedaf471b5f62a0fb6c93"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
