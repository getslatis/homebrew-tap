# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.10.080205"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.10.080205/slatis-darwin-arm64.tar.gz"
    sha256 "8dd4192fee710ed3d5ddf7958f94aa17841d053c9018c8359810e9eed43d0e8e"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.10.080205/slatis-linux-amd64.tar.gz"
      sha256 "0ab45741dd01183e97f1dd7df34ea801357385f1021ab49f1f9b5e18aa463b87"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.10.080205/slatis-linux-arm64.tar.gz"
      sha256 "f1ec1f4df936e735c5f738584e33a2885bc92224e60c71cc6378a14b08eca610"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
