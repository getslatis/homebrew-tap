# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.14.224526"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.14.224526/slatis-darwin-arm64.tar.gz"
    sha256 "e55848e65b27de4791504ba090fc280b20351603de70d07c394bb1f9866dd2ed"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.14.224526/slatis-linux-amd64.tar.gz"
      sha256 "bfd00473e136bf02004058b67ab0c94c9fe2b370b778a6a66b63581135af48bd"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.14.224526/slatis-linux-arm64.tar.gz"
      sha256 "2f37d4707b192601439782d30c7a44bb367f9d4c3b48fd85b462d7f17a7c33a7"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
