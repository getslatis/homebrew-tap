# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.11.193904"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.11.193904/slatis-darwin-arm64.tar.gz"
    sha256 "489dd2c4ccded7d4158c2478ea35aec6215c8949d06519fa311b8236210db340"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.11.193904/slatis-linux-amd64.tar.gz"
      sha256 "d66b086b71fea4f3eb437f357051eb2dc35d2d31d09aa114758c1346625b46aa"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.11.193904/slatis-linux-arm64.tar.gz"
      sha256 "e01b0786218787d58a31cbdba19d7aadaf8a54abb464b0d332aef3f607a29746"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
