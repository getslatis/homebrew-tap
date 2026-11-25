# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.25.191643"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.25.191643/slatis-darwin-arm64.tar.gz"
    sha256 "7065c80fd963ae2653964a821fe0ce0590f0bb8a0271619c6d277af0fce9cd9b"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.25.191643/slatis-linux-amd64.tar.gz"
      sha256 "a239e38a9b4f9aea806ec3031fcd41ce4e81cf49ec684d11a9e0bf0275e9dac3"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.25.191643/slatis-linux-arm64.tar.gz"
      sha256 "ac2a872225627ce967c5f0ddaa6643874f7cb0cb291eda00e89b372c2d01903b"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
