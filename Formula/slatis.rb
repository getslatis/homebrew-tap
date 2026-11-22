# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.22.201525"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.22.201525/slatis-darwin-arm64.tar.gz"
    sha256 "b7150bdf1d62a723fd3b3f88cb83506ccca7ec1714e5c33e865b44889620d9dd"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.22.201525/slatis-linux-amd64.tar.gz"
      sha256 "8f81f1c5b7cfcc4d7f7135294a05aa729eff16203c5570bba05b60c2e5400aef"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.22.201525/slatis-linux-arm64.tar.gz"
      sha256 "49ce8ba5ac7984990f2c809abf8b6a0dd80e3f369c5c5530adbd06eed5ac7a08"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
