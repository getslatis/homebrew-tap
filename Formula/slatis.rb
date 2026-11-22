# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.22.214348"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.22.214348/slatis-darwin-arm64.tar.gz"
    sha256 "5123a3f4c81ca3e0ed39055b3bd904145f09d28663a51628ce4a247379f45f88"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.22.214348/slatis-linux-amd64.tar.gz"
      sha256 "3ec15f064d384e29c0217983c519e8d406f400b85f8598a58bef52dcf02e998f"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.22.214348/slatis-linux-arm64.tar.gz"
      sha256 "09e07c18eaffd7d94c60b9d3bc4c51814064e16ff28f407e16ce24f933b72631"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
