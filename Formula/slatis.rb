# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.14.180317"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.14.180317/slatis-darwin-arm64.tar.gz"
    sha256 "5ad9f63ba796de9a6b63feca08b2c843ed3f6edcb6c6bdc0061fcd14b437ef6c"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.14.180317/slatis-linux-amd64.tar.gz"
      sha256 "c02acd3b0172bf0a8daf656eaa8608a7ac451f30c0e77e6c65da904f17c9e389"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.14.180317/slatis-linux-arm64.tar.gz"
      sha256 "b75d4b589e2a903c68dab2a53c4a62ae5c44bb3cb58f02a4013db5fda45f1858"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
