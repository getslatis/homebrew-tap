# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.7.070825"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.7.070825/slatis-darwin-arm64.tar.gz"
    sha256 "a3a2d9b2b8be0b5e0e637223e6ebb3297e3bb8728aa93b0a2717775af7a4d4b4"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.7.070825/slatis-linux-amd64.tar.gz"
      sha256 "31906d7859774f05498b937446d8800b44cf60f09a4af8b8603791a98e051ba4"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.7.070825/slatis-linux-arm64.tar.gz"
      sha256 "0e19135e6228cff67ae9bc6746af3cb29a8d732ca392f8c6fa0968441475bd04"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
