# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.7.014653"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.7.014653/slatis-darwin-arm64.tar.gz"
    sha256 "3c4bd3251806c36e44ace7773741638f66b20dd273f9ac01724bbe62484d202f"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.7.014653/slatis-linux-amd64.tar.gz"
      sha256 "162efae449a36e284fc1d5e4476c614562ea9d0589bda21eb1634a70414bb4b4"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.7.014653/slatis-linux-arm64.tar.gz"
      sha256 "07f9b6142013cf01c2ec55e7e8e9ef33d5f8cab217bcee16198d4bd9e5f6ef25"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
