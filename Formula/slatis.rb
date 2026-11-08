# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.8.032740"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.8.032740/slatis-darwin-arm64.tar.gz"
    sha256 "48cb3ec84dc8d543e77029922cb0b31accaab049316ff6317f44680b49634caa"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.8.032740/slatis-linux-amd64.tar.gz"
      sha256 "7c61c3f2f4ff203e68d946484b920c8aa87ecbaf54e997a9768886561acaec88"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.8.032740/slatis-linux-arm64.tar.gz"
      sha256 "a3ab2769fa69c1652973ecbbdf56ff4e915cefa40360c4e02bfc667c48cb1662"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
