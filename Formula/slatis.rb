# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.24.191418"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.24.191418/slatis-darwin-arm64.tar.gz"
    sha256 "420ae25468db19e2b114351e9ead242972e1d068dbecc275eee9146da9a5603a"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.24.191418/slatis-linux-amd64.tar.gz"
      sha256 "8639de153777bb5d286f0369e96e4cadc6de639797db7d418359d56f3b48fb1a"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.24.191418/slatis-linux-arm64.tar.gz"
      sha256 "e6fce9d9bf7c85a706789bd6e5a7e65bdb6bdd5843a4f0ff2ffcf0ef56caa517"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
