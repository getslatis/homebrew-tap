# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.13.035643"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.13.035643/slatis-darwin-arm64.tar.gz"
    sha256 "6b66a9b9d232f05ee0b360ac84430a1c90d4fd3e2e50b38ae1d033f0f839bbe7"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.13.035643/slatis-linux-amd64.tar.gz"
      sha256 "31a8034e44b17a26597218cff4816c13d1f96ce57a06b836e86f104732d1f672"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.13.035643/slatis-linux-arm64.tar.gz"
      sha256 "dabd17720c83650ca20bdbe172ee132407b2199b0ba25b5a148aad55c8b2fbea"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
