# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.17.062052"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.17.062052/slatis-darwin-arm64.tar.gz"
    sha256 "5df19c65bfc7c79e07e1c32470899bed3f06b379160d7cb964cfab05fe4647b0"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.17.062052/slatis-linux-amd64.tar.gz"
      sha256 "dc8f72971e713dc59674ac7dc3ca35250246b7371a743c4a529141861786d0c3"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.17.062052/slatis-linux-arm64.tar.gz"
      sha256 "989e165dd80c0268d57ae85b2a200bdb87044657f4f4f40da3c5e7dbea77bf66"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
