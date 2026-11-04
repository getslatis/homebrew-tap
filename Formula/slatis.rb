# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.4.025203"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.4.025203/slatis-darwin-arm64.tar.gz"
    sha256 "15702117bf81989bb80802c6d757505876523c1346c4ed35db73e27f119a7c35"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.4.025203/slatis-linux-amd64.tar.gz"
      sha256 "692a6e2b3274c5a2832bad947ae128d8c4cd7c42a51f7db01a71d00e805a070d"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.4.025203/slatis-linux-arm64.tar.gz"
      sha256 "2f0f2ac73abaaa30e9f1fe3f6040c9e1e08a9520635310461b5cf84b6683b491"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
