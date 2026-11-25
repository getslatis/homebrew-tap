# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.25.035940"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.25.035940/slatis-darwin-arm64.tar.gz"
    sha256 "88edd16adf7b8b68f5bd17105e0c3eda319de8bcbe3553780002fc93d9e6e576"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.25.035940/slatis-linux-amd64.tar.gz"
      sha256 "fa642c868fadecc221c79e4f0646c735fcfba638aa3a743ed0a358ab578bb43e"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.25.035940/slatis-linux-arm64.tar.gz"
      sha256 "f637d67433aca6b7e8eaa2120d8d84653cbd8a211e0864f7d4217115ff244d28"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
