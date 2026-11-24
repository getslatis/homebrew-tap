# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.24.011509"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.24.011509/slatis-darwin-arm64.tar.gz"
    sha256 "da8ffdcb6c4ce8bd39bcb4ec406dcf865153aac6b34899529b3669debe47c2f3"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.24.011509/slatis-linux-amd64.tar.gz"
      sha256 "4d909d5cb8c86ee292c36ee635689969cb793724fbe0d6b8d07c5be55fdfbd27"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.24.011509/slatis-linux-arm64.tar.gz"
      sha256 "ce6a66310185c0c6223aa8d930b22bda0a5d1824cb2e09e1208570654c604fb0"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
