# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.25.042128"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.25.042128/slatis-darwin-arm64.tar.gz"
    sha256 "69a8f7a056573d77ef08bcde4dbf925f2e5b3f730d2bbc78a4a417f05efc987d"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.25.042128/slatis-linux-amd64.tar.gz"
      sha256 "7a96051dfd2fdfd2e72b5239e670146ae98ae01374d450d4cfce70cf0a355892"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.25.042128/slatis-linux-arm64.tar.gz"
      sha256 "62c72d6732a9d731768c6dc2eef01226ca064492bd3912aa05ca697820ab65c1"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
