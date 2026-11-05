# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.5.230557"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.5.230557/slatis-darwin-arm64.tar.gz"
    sha256 "067edaca3a93a5c77e4c95f907c92bd67cee84fd33aa21c8a17125ee9520729c"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.5.230557/slatis-linux-amd64.tar.gz"
      sha256 "317391b65e20a8488bfbe26a945a2e4a1e10997a3e8f68a7a62fb070a4cfc2c3"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.5.230557/slatis-linux-arm64.tar.gz"
      sha256 "446914c1ef9494246ef4bedfeaa492afaca8029042b124d24f21cd423adcc191"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
