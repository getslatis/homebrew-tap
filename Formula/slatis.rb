# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.7.041610"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.7.041610/slatis-darwin-arm64.tar.gz"
    sha256 "9776668fa95e1e053015268b9ac9a8642866b983ab4d5c325377f6abf2f3ef6b"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.7.041610/slatis-linux-amd64.tar.gz"
      sha256 "18437b6ed4c13d93e58d5d471987bc043d6526b2e94a283885b81975460720ce"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.7.041610/slatis-linux-arm64.tar.gz"
      sha256 "e140adc0b432cd6905c0f33bfb81c4803ba9ac550c5cab98571a0ec923656206"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
