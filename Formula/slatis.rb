# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.15.062027"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.15.062027/slatis-darwin-arm64.tar.gz"
    sha256 "9ebc5d83db0065bafb607b6217e0d45852eba252ef4b872a872f3576443cedfb"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.15.062027/slatis-linux-amd64.tar.gz"
      sha256 "7383ce95cb9a654e8dfd3c153389f474f07e1162501c7cd0255d9f00175c44ac"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.15.062027/slatis-linux-arm64.tar.gz"
      sha256 "28108ed7780f82bbbcc1765ae801dc5e0272318c687ecf8cb2b35e5832799aa9"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
