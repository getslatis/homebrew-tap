# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.12.233350"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.12.233350/slatis-darwin-arm64.tar.gz"
    sha256 "2e8f4740e22d47d48ad06431caff3c248fd8dd229cc221f06303896a4a240ab4"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.12.233350/slatis-linux-amd64.tar.gz"
      sha256 "ff5416fa8bbb691b7d49b087e1587d81f45e30b1a93f8dcdea4ca370c48a8dcc"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.12.233350/slatis-linux-arm64.tar.gz"
      sha256 "b710e496c1ca52ad6eee20dbec4de48937c9d6d2bc337dbab83be991557e4c67"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
