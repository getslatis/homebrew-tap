# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.5.004001"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.5.004001/slatis-darwin-arm64.tar.gz"
    sha256 "3988e9ac0e302fbac2b9094153a2c8775df908cf0ef96c1d44f5cc5e633781ae"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.5.004001/slatis-linux-amd64.tar.gz"
      sha256 "e148976473a725a2f066607e577f4a907d31e0cb13c5602b38862156b206e577"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.5.004001/slatis-linux-arm64.tar.gz"
      sha256 "eca56082844577b17b7e4eaaeab2fbff76ee688bacd22723d421e8ef780bf9f5"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
