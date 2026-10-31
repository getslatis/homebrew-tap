# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.31.003806"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.31.003806/slatis-darwin-arm64.tar.gz"
    sha256 "9ef1f793b5c71f120d462c4167e04fb4090572a62b9a69afa7e0d9d86e5ada03"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.31.003806/slatis-linux-amd64.tar.gz"
      sha256 "2045b9f6122156dbe246138233c0bf5107ccbc5a16fb40e4ea7e76970d2b3b72"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.31.003806/slatis-linux-arm64.tar.gz"
      sha256 "4bb970cfe8767844266fac3a562b1d8f307ae33e31135a2790d01905747e32f2"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
