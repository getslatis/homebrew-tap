# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.22.210554"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.22.210554/slatis-darwin-arm64.tar.gz"
    sha256 "e1e0c54045dcdc15d0d69ca5d72e7a0193bea609e02e3498ba7841c458107e8f"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.22.210554/slatis-linux-amd64.tar.gz"
      sha256 "30c49d7d772323668193f34d9b572668f3316c7c2f63d0891fa84e5fa543b33e"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.22.210554/slatis-linux-arm64.tar.gz"
      sha256 "c6f0e6156c02e0d62b082579e9707cf0646fedaa755c31257808ad6d0f57238b"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
