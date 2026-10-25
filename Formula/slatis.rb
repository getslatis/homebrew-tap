# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.25.005518"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.25.005518/slatis-darwin-arm64.tar.gz"
    sha256 "bd23d97d9fbd9eab5bf987d92c9454989ebf08a2f969e0cdd7ab1e819c9cc6d0"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.25.005518/slatis-linux-amd64.tar.gz"
      sha256 "6b71e9e2b0317fdd686adae7e4e22674fbde96a9a1360e525738d24f2388bcb2"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.25.005518/slatis-linux-arm64.tar.gz"
      sha256 "9714c55291624661ef2a78c3368c60aa7711b56613e0c2c8b7a5efce105ec63a"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
