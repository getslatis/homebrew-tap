# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.11.193008"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.11.193008/slatis-darwin-arm64.tar.gz"
    sha256 "c071720752c3e7d12e2def92ec70655cf0c29fe42e1ee6ce3bdb8315d1ca7cf5"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.11.193008/slatis-linux-amd64.tar.gz"
      sha256 "9d1ccc9bf51c490552c8e86e3f8da9413400452ad1ab7ee9436eb724901b56a2"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.11.193008/slatis-linux-arm64.tar.gz"
      sha256 "aeca6ef04e6709036f14c6c57a5354f00360911bae115b50c17fd1e957511550"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
