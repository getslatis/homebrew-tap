# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.26.232513"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.26.232513/slatis-darwin-arm64.tar.gz"
    sha256 "a18d78f97e263e55b5f643490a4508e92e589e0610615f11720aa36f56a14714"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.26.232513/slatis-linux-amd64.tar.gz"
      sha256 "63cf046f404c510878aef7278f8653be8044a74109114f48b26b304a4b18044f"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.26.232513/slatis-linux-arm64.tar.gz"
      sha256 "86170f71a00fca80d6b0a0181893c73d93ff85ecef62467500356d8bbf44b80f"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
