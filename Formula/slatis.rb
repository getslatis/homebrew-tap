# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.27.165013"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.27.165013/slatis-darwin-arm64.tar.gz"
    sha256 "ea3a1a7014ba480da2befaee1fe1aa09f725188d17522ea7dfa2e7713e5e11ad"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.27.165013/slatis-linux-amd64.tar.gz"
      sha256 "c0d67c76b635ce127c877eff11ac66335d4c4a29e43916a2b8aa9433da5cfffe"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.27.165013/slatis-linux-arm64.tar.gz"
      sha256 "7fc1faa4a350004f253579f668377d9598dfc0012fa9439977083a316df9eb92"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
