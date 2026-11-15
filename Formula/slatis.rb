# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.15.023309"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.15.023309/slatis-darwin-arm64.tar.gz"
    sha256 "8f5b9088b599d2ed771275d2ddbb32f60712e9676ff6774bece816ddb7ace986"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.15.023309/slatis-linux-amd64.tar.gz"
      sha256 "7f2e3124440e82a81821edcbc088c5c8792e486e4b3de679f9b9334981a0e94e"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.15.023309/slatis-linux-arm64.tar.gz"
      sha256 "67d71697d7cb8d4f99d5528fbd1b2db04ac8c06530a091b81568aa3dc4671b86"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
