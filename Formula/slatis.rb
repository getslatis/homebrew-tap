# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.28.005031"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.28.005031/slatis-darwin-arm64.tar.gz"
    sha256 "2690b43dcbf98e61109726e751fd15de20709e54adf3bcf252fd5e96daf0f5c8"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.28.005031/slatis-linux-amd64.tar.gz"
      sha256 "0951b0fa92e3f2300a87d8bfdf37e072e82f64bfb846a10d485cfe4cf04a378a"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.28.005031/slatis-linux-arm64.tar.gz"
      sha256 "54052088253e4a6ca75640d2b6ada1daf3a06b663e728a8d105fd5fa064dc50c"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
