# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.24.204709"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.24.204709/slatis-darwin-arm64.tar.gz"
    sha256 "58dd047942dfe1487ac2934d679255d29190122b5cae4dcecf33d8961ec5d700"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.24.204709/slatis-linux-amd64.tar.gz"
      sha256 "a6c45ea5372f966f0279997369ddfbc8e64dbf221efc5c2cfbfc88a7dbe387ad"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.24.204709/slatis-linux-arm64.tar.gz"
      sha256 "a41dac6048a8400873fe287053defd472a7fead12c938a41ba25108525f65a23"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
