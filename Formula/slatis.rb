# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.28.030235"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.28.030235/slatis-darwin-arm64.tar.gz"
    sha256 "c7c6d006f77830ebb233c2290019b44db97258827e2577d6380f74748cc3c810"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.28.030235/slatis-linux-amd64.tar.gz"
      sha256 "c08a36c05df4a4e622be1e432a576f2255ee24247138d9c588987f42b29d2ec0"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.28.030235/slatis-linux-arm64.tar.gz"
      sha256 "001abcd50cabaa090867a1d358c761da537360a91a7fe52c6c6d5e0d1799dba9"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
