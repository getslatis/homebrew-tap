# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.21.201416"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.21.201416/slatis-darwin-arm64.tar.gz"
    sha256 "92ad5d388e54ebbd2c9ae2475926c5bee3acf4013fdfe54efb155d02245bce19"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.21.201416/slatis-linux-amd64.tar.gz"
      sha256 "f8fdb49a1e928f22b5d379fcde661f7650617d1595ead3f7ac7fd6f009e41f3d"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.21.201416/slatis-linux-arm64.tar.gz"
      sha256 "e7c90c5ef2d9c421329c1f5cebbedb96c9fd5e4a784ba2390c077c73c27d470f"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
