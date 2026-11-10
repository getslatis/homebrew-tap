# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.10.072745"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.10.072745/slatis-darwin-arm64.tar.gz"
    sha256 "7141d131bed6187ac0eacf07039aafba6ef45d052df233b81b31eb0597ecf5de"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.10.072745/slatis-linux-amd64.tar.gz"
      sha256 "62145813a22b0efa743c1c18cccfe7910b9b4c8e3de23e9de4ccae444a5ea3d5"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.10.072745/slatis-linux-arm64.tar.gz"
      sha256 "d058942a3dcc3f8e730c68a827188b5d0fa5eacbf3c818476afe400e7944c181"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
