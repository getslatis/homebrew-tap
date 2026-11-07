# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.7.062950"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.7.062950/slatis-darwin-arm64.tar.gz"
    sha256 "c3234285d2011ef69161dc49ee762ec92fe0dc501816c11f55b0c04adaa0498d"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.7.062950/slatis-linux-amd64.tar.gz"
      sha256 "a0db30c3b2c2285d78239846eb23d57ebcdc50c5958367f1f934e79012294d65"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.7.062950/slatis-linux-arm64.tar.gz"
      sha256 "049b0ee4942e92b26c944842d224448e06c05698d418b5337ce2550238f4b419"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
