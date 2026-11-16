# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.16.030217"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.16.030217/slatis-darwin-arm64.tar.gz"
    sha256 "3da4984e0e1c961bdc345746256970fbd0c204a8c62efa2898ccc0d136b18acf"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.16.030217/slatis-linux-amd64.tar.gz"
      sha256 "e1601cee939b7de51218127060d2c3435d61cdb5a3a8976a7bd4e6185757ea42"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.16.030217/slatis-linux-arm64.tar.gz"
      sha256 "298ae3da3b5247015c28520aec2b7d6e987ce88744af5383fa0b10464ca0869f"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
