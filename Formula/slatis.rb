# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.13.065630"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.13.065630/slatis-darwin-arm64.tar.gz"
    sha256 "7e281ba811b2be0f393f522154b14b529ac4950c0e712e6e10ce4562f30c889b"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.13.065630/slatis-linux-amd64.tar.gz"
      sha256 "15c689ab39f1cee9a07526be4ee036eac944bcd17ff9485dbd8bbb705620abdb"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.13.065630/slatis-linux-arm64.tar.gz"
      sha256 "97edb16aa39901bb7e0cf5a6342155fcdaa899a7daf47fe131ec4ab6eb15efbd"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
