# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.16.032116"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.16.032116/slatis-darwin-arm64.tar.gz"
    sha256 "3a40f5d0eab0275a19f57faf6845c56248b746c159de338fd788b067c766416b"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.16.032116/slatis-linux-amd64.tar.gz"
      sha256 "6398bea74b3ecc6381834a283317e95e8b7c81f6224e13dbdde04c25d50cc38e"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.16.032116/slatis-linux-arm64.tar.gz"
      sha256 "ae1a9ad608a6fd718deebc55696bfc9c19be24ac1d569210b6f3d1421ce79c2a"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
