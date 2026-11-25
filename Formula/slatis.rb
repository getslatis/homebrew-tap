# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.25.040739"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.25.040739/slatis-darwin-arm64.tar.gz"
    sha256 "f33036cf6056cfd454b52b0279ecc1e661c97e354dd73f797e72dac8a0454c9f"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.25.040739/slatis-linux-amd64.tar.gz"
      sha256 "6015f17906411cdbfbd4f0431b6a0a87490f4ca5b88b6b46c86af9f1d17dbf57"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.25.040739/slatis-linux-arm64.tar.gz"
      sha256 "60a2cf3065aba23acaa6f2570ed89498d4789ed6b230cbcc2466a4aa0793682b"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
