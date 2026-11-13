# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.13.012342"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.13.012342/slatis-darwin-arm64.tar.gz"
    sha256 "e5c6a3a1086979c2de4ecbbeb117f8ee56b12c4baf6700bb3f50d7a233a5df37"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.13.012342/slatis-linux-amd64.tar.gz"
      sha256 "6ec975989fd7b0d0f19af68d14f6cb931d98895d67b472ac5c992d1838e55020"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.13.012342/slatis-linux-arm64.tar.gz"
      sha256 "9cc1632a152bfd78f4db982895bf7307c9ff42757ffd45e5d2ae34ae8f508f30"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
