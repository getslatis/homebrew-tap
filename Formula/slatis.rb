# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.19.055357"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.19.055357/slatis-darwin-arm64.tar.gz"
    sha256 "c4be6021bc99ca8fd5cf94b0745c88fb60e00d6f7b1dcb6e78134b38adf633c1"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.19.055357/slatis-linux-amd64.tar.gz"
      sha256 "432f2eddda19eb226bab2f01b1fca93c75b222728add433883eeb44a2e095ad6"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.19.055357/slatis-linux-arm64.tar.gz"
      sha256 "0d25ebef22fcf9f3a50bdae7863bf2e1fe87f367d73b94b1afe8a0469ebe1f2a"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
