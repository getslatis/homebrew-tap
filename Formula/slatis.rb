# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.16.003820"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.16.003820/slatis-darwin-arm64.tar.gz"
    sha256 "eb3d9fd5afc67c5f6b771be2aa426782de03852ea32bb8aacefa6ac348cac5f8"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.16.003820/slatis-linux-amd64.tar.gz"
      sha256 "e3618d3bc88447b09e1f81a39925677a3c45651e9261fa33e669edd533049884"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.16.003820/slatis-linux-arm64.tar.gz"
      sha256 "6561cdc7ace45601ea04de5ed1ba47d7928e2587e1ac9ce36eb8679b3bf5aa96"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
