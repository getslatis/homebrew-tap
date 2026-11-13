# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.13.033046"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.13.033046/slatis-darwin-arm64.tar.gz"
    sha256 "5ed73093e4130c5408846c7b0c89b0ffb6638b4f8db33acc3af6f8d3f556e3fa"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.13.033046/slatis-linux-amd64.tar.gz"
      sha256 "5f0a44525ec9acef566a5ae80c92eaeb9f86ea3ff7c6ffbc9594a5fd0a6c2682"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.13.033046/slatis-linux-arm64.tar.gz"
      sha256 "16771cc09efe78c9e9d923fd0681fe8e76b605419d77ece14395a710ed20639e"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
