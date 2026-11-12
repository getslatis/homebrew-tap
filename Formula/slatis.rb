# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.12.234537"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.12.234537/slatis-darwin-arm64.tar.gz"
    sha256 "809a634fcdca9c66a067d52c2ad5598285d63dc7ed40391fd415e6afb741252f"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.12.234537/slatis-linux-amd64.tar.gz"
      sha256 "014e7bca272a9d25381198eef3a6f70dc552c5300dbb5e272a3643081e798835"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.12.234537/slatis-linux-arm64.tar.gz"
      sha256 "4ec7e9655fdb75a00613cf58029953795b7de46823883f84ef797953b6d634df"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
