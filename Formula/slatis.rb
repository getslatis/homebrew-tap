# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.8.190443"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.8.190443/slatis-darwin-arm64.tar.gz"
    sha256 "2b6ed3e1c2ffd2c4ff08da8c67f5aa9c66447e0d2d41042e0bf7dc35a65c9323"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.8.190443/slatis-linux-amd64.tar.gz"
      sha256 "f84193b0e8e9c12fdc7b15cdc3687c16adae844dd54dfd1519ae9cf9f686086b"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.8.190443/slatis-linux-arm64.tar.gz"
      sha256 "c1fe5cb6c563edeafb2d0cf7d4e2573562bab2dfe194ecb9a15a019c5b2f226a"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
