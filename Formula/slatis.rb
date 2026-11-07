# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.7.222054"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.7.222054/slatis-darwin-arm64.tar.gz"
    sha256 "217ce7b716c040572af347a997ab1936f9135af486232733530b823c4cd61152"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.7.222054/slatis-linux-amd64.tar.gz"
      sha256 "5de55e14ee38d9c421db7613ad6401b5a99a77aed34bdb544c47992774a34c0c"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.7.222054/slatis-linux-arm64.tar.gz"
      sha256 "2e370a52540eae7d0881925341d9ff585b39d78bf5c618eea5e57979d5bc35d6"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
