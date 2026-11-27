# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.27.172842"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.27.172842/slatis-darwin-arm64.tar.gz"
    sha256 "e7a087bbcf5fed47b1773aed6ba508db578db6952409441f833bf66ca0657d38"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.27.172842/slatis-linux-amd64.tar.gz"
      sha256 "f971ff1739b9c95de6f40c4d8dcaa7ce030d1d71c77524ca24983fd92b049fe5"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.27.172842/slatis-linux-arm64.tar.gz"
      sha256 "db5e25e2eb344938e90066ea07b085cc2ef8c6ed0601d8540ead95e77d893e00"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
