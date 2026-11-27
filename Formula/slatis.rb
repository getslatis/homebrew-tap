# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.27.192107"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.27.192107/slatis-darwin-arm64.tar.gz"
    sha256 "436b7a96ca669634d071596fa9638792a876b965bd3c075978ac61e24e31f2ba"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.27.192107/slatis-linux-amd64.tar.gz"
      sha256 "33144427d90966f5328ab376b5af97be6bd7d34acd128146a1adfae315c8e1d5"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.27.192107/slatis-linux-arm64.tar.gz"
      sha256 "6add7d9ec1ef7adea62f2e5d366f552e4bb0c12c33d9fc12ab7bb754086fab18"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
