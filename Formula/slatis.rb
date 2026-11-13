# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.13.081035"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.13.081035/slatis-darwin-arm64.tar.gz"
    sha256 "d73b300a952a94e9fad8f4c1ff3a49cca260b1a2049188d6577d96f3e5546b44"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.13.081035/slatis-linux-amd64.tar.gz"
      sha256 "dbea52535a4f0f9ae509cc71e93f39802e08cd083d754d1e90c7e861b6a7caf0"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.13.081035/slatis-linux-arm64.tar.gz"
      sha256 "63363f9ae304f7d1db083af6facd6a3c35e1d449e59db198e9ce77212827c542"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
