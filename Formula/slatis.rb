# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.3.022010"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.3.022010/slatis-darwin-arm64.tar.gz"
    sha256 "f03dd9b887a31cf3a759a5332eae4940142340f65c61abd94cdf7a86ddf57255"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.3.022010/slatis-linux-amd64.tar.gz"
      sha256 "3d8a796b32452b4f23021da5cfec298fabcf4a86e06213ed6b3d7b235e201ebd"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.3.022010/slatis-linux-arm64.tar.gz"
      sha256 "b8937bb0af97a10f59703446047446fe49d618ebc195c96cadea8ca58b956d46"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
