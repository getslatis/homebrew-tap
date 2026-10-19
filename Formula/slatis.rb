# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.19.020455"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.19.020455/slatis-darwin-arm64.tar.gz"
    sha256 "16cfed17611c6ac2008f8a8a79647dc53fbd9596c2c4c9e748753cfdd6b32d09"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.19.020455/slatis-linux-amd64.tar.gz"
      sha256 "fad7c6b3768759d47b4cdfe12c9f253f69eea6f17a4bf3e4e5cca9813ac02432"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.19.020455/slatis-linux-arm64.tar.gz"
      sha256 "4ed8c536b02d65f4b6980847512ee15b78e3191074319ccec1567551b7a861bb"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
