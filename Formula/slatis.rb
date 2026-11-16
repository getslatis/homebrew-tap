# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.16.233611"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.16.233611/slatis-darwin-arm64.tar.gz"
    sha256 "90b524fd63b015010caa6405a642089ebc1ab76dd2b14025b038bc2fcb34e3b6"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.16.233611/slatis-linux-amd64.tar.gz"
      sha256 "d3eae5697d86758cddf9b45ce570d8e47f2c677853b6858ba29a44a2d5d9c7fd"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.16.233611/slatis-linux-arm64.tar.gz"
      sha256 "cd718a478f8b851e1939d8617d7cf4dc011f620fdf58e8b3e95a9899e79ab798"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
