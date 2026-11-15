# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.15.093102"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.15.093102/slatis-darwin-arm64.tar.gz"
    sha256 "4b8f95aff937a8e6e015944c67d4fabaf034cab31154763468891c7cc2396288"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.15.093102/slatis-linux-amd64.tar.gz"
      sha256 "836ce9537f3a2bc079c1629f9ab9a4747ae52975bbf49aaf204d9e6e834a5e80"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.15.093102/slatis-linux-arm64.tar.gz"
      sha256 "717a235ccea94296c6a22c24da3a6a04bbb478f8acf91ae2734a8f46b3116c04"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
