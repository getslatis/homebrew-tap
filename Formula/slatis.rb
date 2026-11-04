# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.4.212221"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.4.212221/slatis-darwin-arm64.tar.gz"
    sha256 "6dd2357960ccac2e2146fecfb2ca3307d495de32face3fb64f12df32ccddefa1"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.4.212221/slatis-linux-amd64.tar.gz"
      sha256 "7049412775b8cfb754b77808ced20b2640b6e1154916d37873e69a56d4cedc7a"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.4.212221/slatis-linux-arm64.tar.gz"
      sha256 "d1fb518a09cca85dec44c15c1c874fa4b7b1207fb4a32c0d5ce97e9eed59f002"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
