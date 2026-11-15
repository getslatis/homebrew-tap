# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.15.065655"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.15.065655/slatis-darwin-arm64.tar.gz"
    sha256 "eef7ca306c20e8fef480b9909f0ead25568e8e13af35926a574490effdb0ac94"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.15.065655/slatis-linux-amd64.tar.gz"
      sha256 "ea788d236ad1f448348f239995317566adfd02caff9e509cab451cbd7ac2df2a"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.15.065655/slatis-linux-arm64.tar.gz"
      sha256 "9c15ec2f6489d0762f57e39733d7912f1aad7338926d4b5f3f93c895079193ed"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
