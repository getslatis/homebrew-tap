# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.10.082732"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.10.082732/slatis-darwin-arm64.tar.gz"
    sha256 "5939958fdbc256c4d0f4c0bb186e9169d90b27e0abbc087772774c86102d3852"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.10.082732/slatis-linux-amd64.tar.gz"
      sha256 "22aab4fbf79bb5392267253b5920b003fcd511ffca0e3ae6b33803ff72101d29"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.10.082732/slatis-linux-arm64.tar.gz"
      sha256 "c20bcfc8e61abbf5a8d3538150d65998cd4b8a32cb63707c44f7ca584e3f4072"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
