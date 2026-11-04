# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.4.050000"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.4.050000/slatis-darwin-arm64.tar.gz"
    sha256 "ba602e8b6755c17d9a4aa3fb65f16c423e311231716ff72b90781e2085e281d3"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.4.050000/slatis-linux-amd64.tar.gz"
      sha256 "9b7681d8a83e054dba6ecde4a246bdbc770cd8d1ac02e8d43a153b8ddc049dbd"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.4.050000/slatis-linux-arm64.tar.gz"
      sha256 "b848f1e7a1d5feda250dcfafe3a8cca2659ea4d93851468b470318cf30785559"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
