# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.7.044431"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.7.044431/slatis-darwin-arm64.tar.gz"
    sha256 "16c3b42da9cdbb3ee2d19702dae02a3a51b17a1308dd631a8ac6efc0736446b5"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.7.044431/slatis-linux-amd64.tar.gz"
      sha256 "73d80104ba0abbefc5ff5029b075c4d883fc29c4a9d41330b594b724e97fad2e"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.7.044431/slatis-linux-arm64.tar.gz"
      sha256 "ca59fffe682c401e174907f660c9ce4aeed48ea1c5849e6e3e488a274fae0041"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
