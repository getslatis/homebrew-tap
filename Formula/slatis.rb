# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.13.075034"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.13.075034/slatis-darwin-arm64.tar.gz"
    sha256 "678c97b73b276e56353ffa07b3ac0942995bce552a01c41df0b2335824b033ad"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.13.075034/slatis-linux-amd64.tar.gz"
      sha256 "c9395655200782ff488f0dfa009945076a57a2b2b7f0123bd54ed2b51c95d235"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.13.075034/slatis-linux-arm64.tar.gz"
      sha256 "f2b8274a3e3b02f7802ff115a926477596f21ec9936d58351d62f13aa78e785c"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
