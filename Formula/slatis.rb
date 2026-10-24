# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.24.023841"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.24.023841/slatis-darwin-arm64.tar.gz"
    sha256 "a7e7a07c80a234355c5428928b233a914224900499224852d14f5ae03e1fb245"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.24.023841/slatis-linux-amd64.tar.gz"
      sha256 "a12dddb062691d1dee9e897f0861802a8e56f804eff2511db92c702c8085e2fb"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.24.023841/slatis-linux-arm64.tar.gz"
      sha256 "d6d40f3dd78700f3a12a50c3a5cbccf6a2209e60d5eb74d3987af4921a74985f"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
