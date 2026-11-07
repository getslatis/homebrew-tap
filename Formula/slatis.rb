# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.7.104343"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.7.104343/slatis-darwin-arm64.tar.gz"
    sha256 "7f6faf3b4b9075d0eb0261297c341fe5bbcbed13311b0104d1334f2204ca391b"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.7.104343/slatis-linux-amd64.tar.gz"
      sha256 "5d5022c137b94e3d8820b0d3483d131c5632db7c7b5aaad834509dbad4b68687"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.7.104343/slatis-linux-arm64.tar.gz"
      sha256 "5765a0fd431de8e560a31a7c695167bad38f6369bf46db3a11280e482b72d1db"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
