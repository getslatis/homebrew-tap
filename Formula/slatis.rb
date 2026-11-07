# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.7.091416"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.7.091416/slatis-darwin-arm64.tar.gz"
    sha256 "046bf4be0c442184a9addc9d26f7fd74ca1af60f1676900695f535594d51665c"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.7.091416/slatis-linux-amd64.tar.gz"
      sha256 "8dd9e7769a63f4c82af349132a2c811c58b024dfe19a0c1ceca1d6c999f2a3d5"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.7.091416/slatis-linux-arm64.tar.gz"
      sha256 "a545eb6f16f8d28b55164781a1c3f010b5951ee90702acc9c6a95a2b585e6317"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
