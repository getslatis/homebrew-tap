# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.4.082933"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.4.082933/slatis-darwin-arm64.tar.gz"
    sha256 "979c73d5cdd25d4b45fe4e2f57e1ccc46e0affe800622b1d5c7a962669fc349e"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.4.082933/slatis-linux-amd64.tar.gz"
      sha256 "27b6118ab93fa8c1259e257c196c4aeebcd67ef3a54889f35b9e08beebd2e772"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.4.082933/slatis-linux-arm64.tar.gz"
      sha256 "7bab952f98533145cdb777bb09515ddb18b879d40cb223de32d02a92b8b46012"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
