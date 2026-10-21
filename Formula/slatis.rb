# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.21.021422"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.21.021422/slatis-darwin-arm64.tar.gz"
    sha256 "dc3ed20a1f0d89a31de8b21cafd681beef06fb4dc8c41225b67d989aaa3883d4"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.21.021422/slatis-linux-amd64.tar.gz"
      sha256 "4c605d952b3a026ac4998f1cd9f63eb5df76e99ec572151797be7f91779e44f9"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.21.021422/slatis-linux-arm64.tar.gz"
      sha256 "7fc716dc37240a9a0606b3b388eac74cc0007504b12aca211ed1c8b91a1f14f0"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
