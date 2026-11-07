# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.7.061612"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.7.061612/slatis-darwin-arm64.tar.gz"
    sha256 "cf8c6abcd043909e1b89b1f6af6b84f5851a0a51f235a618fe39b28a5046deb3"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.7.061612/slatis-linux-amd64.tar.gz"
      sha256 "6cd50dbd2d1362c5b3859ed81471a9fbfebffb352f2a43bd493d2003e66024ba"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.7.061612/slatis-linux-arm64.tar.gz"
      sha256 "70bd9276ba965aadae1cbd7ce5532edcd6614437522269cb0d2731cc09e9e9fb"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
