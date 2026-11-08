# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.8.102932"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.8.102932/slatis-darwin-arm64.tar.gz"
    sha256 "3dc39450ec384eeccddbbf034548de080ea94e688516268a9f1402e43a7431cc"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.8.102932/slatis-linux-amd64.tar.gz"
      sha256 "e4700612ef3b1824fab6876bbbb6e837c4357ce2c492d571153f8a57e96bab3c"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.8.102932/slatis-linux-arm64.tar.gz"
      sha256 "92625c6b0a6cae5d16023f58e689ce4ecb20e3343079e143cb9738f45ebeadaa"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
