# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.20.231106"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.20.231106/slatis-darwin-arm64.tar.gz"
    sha256 "ba4e620edecf690aea113adbc77cc67e149131efe08aa548f7373f27c36aefe3"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.20.231106/slatis-linux-amd64.tar.gz"
      sha256 "6d6ae035228d058e4c93d9ef500bb01c44b6e9b1a31bf1b4f82aec24b818bfa3"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.20.231106/slatis-linux-arm64.tar.gz"
      sha256 "6c0116d8e1e88fdaf8275278375778991acebacf2fcd1b6aa36226e4c0b91cd2"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
