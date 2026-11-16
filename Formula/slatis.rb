# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.16.021611"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.16.021611/slatis-darwin-arm64.tar.gz"
    sha256 "c4e2aa95351a35715dc9f51645556ccd1ddd1cc7aa881b75abdfedd4f0c8a199"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.16.021611/slatis-linux-amd64.tar.gz"
      sha256 "566a0c308f636ef6c3cac7497e357e8ec3cce1a5024f46fa9e0249a2b35f1b1f"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.16.021611/slatis-linux-arm64.tar.gz"
      sha256 "c84c75db247548259fa04739f40c9942569284c9b64c6bd5ac1ff7048bab99ab"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
