# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.10.074423"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.10.074423/slatis-darwin-arm64.tar.gz"
    sha256 "f2286c375dd0970a0441795e5b4aec4e46de19c3dbbd46fba83e341c7c9c38cc"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.10.074423/slatis-linux-amd64.tar.gz"
      sha256 "acff67585e1435ffd0007fd1a22e222ce308b728b87ca45723e879679c227748"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.10.074423/slatis-linux-arm64.tar.gz"
      sha256 "f4537543bdc5d7e2e9aa9b2f975f416ccb1588fd7de5daed6a6fb043947465e6"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
