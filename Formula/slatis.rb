# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.15.212443"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.15.212443/slatis-darwin-arm64.tar.gz"
    sha256 "0bd60499eaa820dc68d35dc187a1cfb9f454f34062612dca30d7108827f08dc9"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.15.212443/slatis-linux-amd64.tar.gz"
      sha256 "ba8f1064da449d3ef551d389600a84b944f8354c584577173f08874687377a9c"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.15.212443/slatis-linux-arm64.tar.gz"
      sha256 "5c6e24adb44e106f77a98741903bcd0169b046cc3f5cd8a024895c61bfb52352"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
