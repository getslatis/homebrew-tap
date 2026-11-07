# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.7.063833"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.7.063833/slatis-darwin-arm64.tar.gz"
    sha256 "ce90088fc83cd4d013af43b10316063d1d8cf648fab49bc1da77ef9718cef92d"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.7.063833/slatis-linux-amd64.tar.gz"
      sha256 "21cae3701c8f63c13be61d71b27fb3f81688d48bc1756b956d32aa29849e5d31"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.7.063833/slatis-linux-arm64.tar.gz"
      sha256 "6772a166bc86c57a2d5eea8d628954c651418fbb5de5a483b0ccbf6a077ef33c"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
