# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.19.063246"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.19.063246/slatis-darwin-arm64.tar.gz"
    sha256 "75acd0a548c82002bb9bdbb12cfed647e1deb4fddefdda385af80ef50730fc3d"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.19.063246/slatis-linux-amd64.tar.gz"
      sha256 "cb4e3b3479d19544e27533635674ba3a8d2c0fc47661b0fad75138d7387988ba"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.19.063246/slatis-linux-arm64.tar.gz"
      sha256 "dcce0ec56f4727ff3972a7617dc3129994320f50466084aaea88bb90f53bcbc2"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
