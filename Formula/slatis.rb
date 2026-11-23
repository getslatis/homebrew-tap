# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.22.235513"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.22.235513/slatis-darwin-arm64.tar.gz"
    sha256 "a43c52cc045cc23d63db8f2960da05d76b2f3d544acd6c78e95bc38266ce69be"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.22.235513/slatis-linux-amd64.tar.gz"
      sha256 "858054f9d4b29fcf7b1065277e8d657496790558848c3e2e8a93fb742e9d7809"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.22.235513/slatis-linux-arm64.tar.gz"
      sha256 "6e811378eaf3e4f3fa4d63f61a06b2f4fa401a0699a2617488f2654af60552c0"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
