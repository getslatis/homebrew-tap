# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.24.163543"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.24.163543/slatis-darwin-arm64.tar.gz"
    sha256 "062dd48a72722f61bafd5df10a6c2aa1e1b61061576b8629a768892898257931"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.24.163543/slatis-linux-amd64.tar.gz"
      sha256 "223ea528727514777feaeed08abbf6d0e63acaa50be9d99e9a685321c1444e82"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.24.163543/slatis-linux-arm64.tar.gz"
      sha256 "cc2e1156ae65fb6f2f5115287029361d1aa7fb0bb9e01d238272225427574c0e"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
