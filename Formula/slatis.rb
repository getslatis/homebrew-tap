# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.4.231418"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.4.231418/slatis-darwin-arm64.tar.gz"
    sha256 "5dfbf0458d328f0516c4f6176a5380b421f74db24bf5e6fa25c0b7c5d7a8435e"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.4.231418/slatis-linux-amd64.tar.gz"
      sha256 "cce23ac4735df6762365824e3bfdc0bef7b3a4ca8014d37002c873a6f9d47568"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.4.231418/slatis-linux-arm64.tar.gz"
      sha256 "c12c1476ca4c5ffd3123da13eee1a6c8204be6de3c6c88b5f5213383488562b8"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
