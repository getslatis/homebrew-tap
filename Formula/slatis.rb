# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.6.004122"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.6.004122/slatis-darwin-arm64.tar.gz"
    sha256 "875fa980ce4acb734de2543ca225999225776811b52e2329c53968079648b95c"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.6.004122/slatis-linux-amd64.tar.gz"
      sha256 "3917dc6c42dfcb06d500f206b5d32bd01b262f2b36cc9b3253e6fe8cc71b2682"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.6.004122/slatis-linux-arm64.tar.gz"
      sha256 "5680c77014a4097f00bac96128f045b982ee1b0559241bf699c7753ef25bc7c7"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
