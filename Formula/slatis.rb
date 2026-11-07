# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.7.235031"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.7.235031/slatis-darwin-arm64.tar.gz"
    sha256 "8f70509b476c8f0cd80f223f28794e635a0878d17fe57921afb22c20373d8041"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.7.235031/slatis-linux-amd64.tar.gz"
      sha256 "b44e0d0d4e1b64cb2aad04377507beef05d30968313349552ebaaa0eaf3d148a"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.7.235031/slatis-linux-arm64.tar.gz"
      sha256 "1136883d093b64c7bff90660e086d02352b5da4d429ddbb3ad1d8ea93761d642"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
