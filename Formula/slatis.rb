# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.7.214555"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.7.214555/slatis-darwin-arm64.tar.gz"
    sha256 "299455efd84b9e87d895a8c44224d0f1de3c0e402250f0b5eaa2273c4dba4fdc"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.7.214555/slatis-linux-amd64.tar.gz"
      sha256 "6543a121de797c9abe8a95ca229327e87ef3d4f2722a232fc62b3ac2fe0e9931"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.7.214555/slatis-linux-arm64.tar.gz"
      sha256 "be036ecb4ec6c3d459ab2a6d7ab310869cc98d2b031e58415e8287819a0b0f1e"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
