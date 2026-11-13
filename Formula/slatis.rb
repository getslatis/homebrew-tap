# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.13.074519"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.13.074519/slatis-darwin-arm64.tar.gz"
    sha256 "b61070bfa4a066af7c8a982e450230180f71766126a409347cc3854879d40ffa"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.13.074519/slatis-linux-amd64.tar.gz"
      sha256 "02b2bd19072415f62344d30663d1ea6138eaea6782d02c238d908ca0d18cd71d"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.13.074519/slatis-linux-arm64.tar.gz"
      sha256 "8367214be80d3b8153ad649af7d66a684c3825694105ef58305749d3acfdc3ff"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
