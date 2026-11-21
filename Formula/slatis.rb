# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.21.191331"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.21.191331/slatis-darwin-arm64.tar.gz"
    sha256 "092ef5d0ac0cced053ad04eebfed212205b2068593dfa55c1591f9bb2483a9dc"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.21.191331/slatis-linux-amd64.tar.gz"
      sha256 "4cede9d7c4140a017b5f4274361e7b5e9a2fa8d8a0e1ab4f83086d1242437c00"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.21.191331/slatis-linux-arm64.tar.gz"
      sha256 "40e762ed68ef372bf460a6cf1fe68f5893058038fbce9b6b313befe139db8f93"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
