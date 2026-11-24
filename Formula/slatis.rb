# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.24.172650"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.24.172650/slatis-darwin-arm64.tar.gz"
    sha256 "6e57455660b80725fc42651e8995e23db260a374b830a2a777af959a6442b818"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.24.172650/slatis-linux-amd64.tar.gz"
      sha256 "7835af0c29866dcafe70565fe2ec0d623c315949ee95bf3ccaf117e07f49b898"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.24.172650/slatis-linux-arm64.tar.gz"
      sha256 "349f644f4f5cf2fb6405d0f571006476b2a45a9d3443723edb76e842993239c9"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
