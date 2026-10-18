# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.18.065417"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.18.065417/slatis-darwin-arm64.tar.gz"
    sha256 "70f9d1591d1eb145ed46f3150f2bc61a170c703cd3ff4e29c13c3bf1681ceeb2"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.18.065417/slatis-linux-amd64.tar.gz"
      sha256 "c81fbc21c94e9ab11989746d2106f4c25d8e2cb22920fab38bb320cdf30d2913"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.18.065417/slatis-linux-arm64.tar.gz"
      sha256 "6c832dcba0c68211672b7e01c001ff5e8836129b693ce33fd2f295a86e22dc44"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
