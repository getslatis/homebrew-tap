# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.12.080028"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.12.080028/slatis-darwin-arm64.tar.gz"
    sha256 "6d8bf51924e302b8f2b203d7a9b9d118d566103187cc3658a05cabdfa356c06e"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.12.080028/slatis-linux-amd64.tar.gz"
      sha256 "461aabc899c16e1e55cbb1becda409f1bfdd515ca7ade589d2c537e29430242a"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.12.080028/slatis-linux-arm64.tar.gz"
      sha256 "84e56d016996e813da6eac1072ea555fb9b82d19912ad5e49f96bc9fd27815b1"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
