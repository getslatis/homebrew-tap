# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.25.003712"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.25.003712/slatis-darwin-arm64.tar.gz"
    sha256 "650738f17359a82dedb9dfacc8116d5bfd51cbe2949bbb080241d9c69e5fd3bf"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.25.003712/slatis-linux-amd64.tar.gz"
      sha256 "f988932899f89a10676f3a56371e5f4ce7c6cb4716d633a57eb8e47baca46f27"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.25.003712/slatis-linux-arm64.tar.gz"
      sha256 "afd17c10cd2a8428f1557984ee978bff8f4e1c1a17c8928791c6d2799c8aa27c"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
