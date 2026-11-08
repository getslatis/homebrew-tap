# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.8.044005"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.8.044005/slatis-darwin-arm64.tar.gz"
    sha256 "aa72858686f628de0afc7a9afe8fbd8c3d0b1f2baced3e4a22c1faf09729c36f"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.8.044005/slatis-linux-amd64.tar.gz"
      sha256 "98fa74e5a800f6b8e9b2f148a614f8e5784e923f903def890c3157fc84169994"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.8.044005/slatis-linux-arm64.tar.gz"
      sha256 "3aac6662908c09b14477389fe4eb466e7c2d64e8ed2d1df65c24fb1ae6b7c206"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
