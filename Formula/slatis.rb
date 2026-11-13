# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.13.150418"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.13.150418/slatis-darwin-arm64.tar.gz"
    sha256 "f34215f20695589105e37b5c6fd7affeb16d222b5040370b76cf46096de99f78"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.13.150418/slatis-linux-amd64.tar.gz"
      sha256 "0aa617927a0e27706a7a9ef53f22b632080b660c7c043f213b963f4f93c38b8c"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.13.150418/slatis-linux-arm64.tar.gz"
      sha256 "5cff4eff218c711108a8bbdc14151c3ca39864977ff2e9af3b1e63b12cc1f9cd"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
