# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.28.070049"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.28.070049/slatis-darwin-arm64.tar.gz"
    sha256 "259d4ae12b43ff993a69454e2f4f79fc835f917dfd955d6b7b9ccf85b7fc56b2"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.28.070049/slatis-linux-amd64.tar.gz"
      sha256 "6ea431a80a68071bdaafe5540e69bd3b28cc5f22ebcb4908b299e09766801446"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.28.070049/slatis-linux-arm64.tar.gz"
      sha256 "f141fe7b66a9670d302f1f61f056750eab8ed05070713b9f184d7c4c215d1c8e"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
