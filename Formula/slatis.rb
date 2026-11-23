# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.23.031419"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.23.031419/slatis-darwin-arm64.tar.gz"
    sha256 "cbe1e0ed5c2ff2d009e7628d33ff9b866f830a8c910e84ffabf2bc5fcffa97ba"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.23.031419/slatis-linux-amd64.tar.gz"
      sha256 "7c23f2ff18cea00cdb9390d378d50ff402dfc08b959afcaa5deef096c5fe1108"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.23.031419/slatis-linux-arm64.tar.gz"
      sha256 "02670b034fa513878ca1165ccd612810e4f464ddd8f4c11879716d0b6017cd13"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
