# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.10.031131"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.10.031131/slatis-darwin-arm64.tar.gz"
    sha256 "83b6760aadc9c439ecb66094c24cfbcb4b07ebc5bbc426db1b2a44c824048b49"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.10.031131/slatis-linux-amd64.tar.gz"
      sha256 "aa53e57420bc930b89bee536b238bcafb4f256974255b2d3f1bc04ca06748f46"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.10.031131/slatis-linux-arm64.tar.gz"
      sha256 "a9b9ba8db73e6e5f5065c11803960614b4c07ffeaff51441c899e3121fbd8328"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
