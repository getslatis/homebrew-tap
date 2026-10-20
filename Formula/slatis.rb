# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.20.065225"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.20.065225/slatis-darwin-arm64.tar.gz"
    sha256 "c9bb309da908b52172d75e1857201d1a23415e64f75e9fb716cbf600a45c9416"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.20.065225/slatis-linux-amd64.tar.gz"
      sha256 "441a5c2356e253ff42bd8167820e097ff85159fd677510a9ded423bcefbb318d"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.20.065225/slatis-linux-arm64.tar.gz"
      sha256 "be6a01c0391683d5369ac26e3726f15a3c7a27c8499f04b6548a741a2b780d5e"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
