# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.28.010657"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.28.010657/slatis-darwin-arm64.tar.gz"
    sha256 "91ea24c87f74b07e27c1874f5b8474f4c848fabcbc56d6f49debefed663e9c39"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.28.010657/slatis-linux-amd64.tar.gz"
      sha256 "e5e9130e5e31743e0bc9795baff2a06d6ac91e3ece95c419792e1d7fa04fd1c1"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.28.010657/slatis-linux-arm64.tar.gz"
      sha256 "f4ca2344904ccfdcafc889684192811358830e0147187671027a9263485232d0"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
