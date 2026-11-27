# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.27.223518"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.27.223518/slatis-darwin-arm64.tar.gz"
    sha256 "cdff190439740a82e8e7c6c1794434a73d1844e27f805bbf751acd5fe6de1139"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.27.223518/slatis-linux-amd64.tar.gz"
      sha256 "246157e7e5bbc9ed542c887d108e8ac92093dd0393a83684a7a7ad25da53ad69"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.27.223518/slatis-linux-arm64.tar.gz"
      sha256 "9ade8992c1e207148548dec7ac7ae3db26ed2ecbbf3a79e7bf41342b0124c9b3"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
