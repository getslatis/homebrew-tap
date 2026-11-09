# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.9.010550"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.9.010550/slatis-darwin-arm64.tar.gz"
    sha256 "7fd9c514ee4619546283b1c8700dd8ff437b0ca9dca01913bf2ea913b3caa087"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.9.010550/slatis-linux-amd64.tar.gz"
      sha256 "5de576648faf21b9b555ce04e6706ab01148814cd9008a9ede3ac4c7cf54d735"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.9.010550/slatis-linux-arm64.tar.gz"
      sha256 "c8e349442a07127913fc63385a141302ab452c3cb07b5d0345bd16427d168f9f"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
