# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.31.235102"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.31.235102/slatis-darwin-arm64.tar.gz"
    sha256 "72845bb4930b7eb0ff98291c61c8254bd9a249d60002df5099aaa3730046c2bd"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.31.235102/slatis-linux-amd64.tar.gz"
      sha256 "b90ed4f40e6e8daf8c0a65ebfdaa8c1fa56444dd302a0fcb2a907e79935b6d5c"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.31.235102/slatis-linux-arm64.tar.gz"
      sha256 "4e6b9103e04b799dea152b101ed82cb96424401b8a6acaba98bf513be00cba46"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
