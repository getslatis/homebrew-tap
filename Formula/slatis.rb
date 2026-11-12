# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.12.195143"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.12.195143/slatis-darwin-arm64.tar.gz"
    sha256 "d9a93101dd9261e40ebf711d6e8c7362873fceca07433436db3582864ea857fd"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.12.195143/slatis-linux-amd64.tar.gz"
      sha256 "f20aef5949955803b9a930b0c5ad41d2c70bc03cd75726c3b4de4582216e6a9a"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.12.195143/slatis-linux-arm64.tar.gz"
      sha256 "5cf01f374ceea43d55a55d3f679346d1e0768bd2addaa5df85b89580db8162ab"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
