# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.25.185053"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.25.185053/slatis-darwin-arm64.tar.gz"
    sha256 "9de0deb4768de06e7533afb8b095bb7bd598e3e6df15c1287e32be02ba7a0cd7"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.25.185053/slatis-linux-amd64.tar.gz"
      sha256 "e6a71bc390283e483f51c657538028ed01a1fdef075b92092ebdf8ac304c5952"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.25.185053/slatis-linux-arm64.tar.gz"
      sha256 "8a2a50cd8336eea92fcad5c3b356570432935882f882954aa71cd90c4c55c312"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
