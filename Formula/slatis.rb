# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.31.032126"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.31.032126/slatis-darwin-arm64.tar.gz"
    sha256 "a6506c191159daf9e87e18bd60b61a8fefb76e5d4e68104adb3c243abff828da"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.31.032126/slatis-linux-amd64.tar.gz"
      sha256 "7d680cf3a6252bafc7d2e69c505ab4a1c20d231fc0938fb14628b52b7e5bc4e1"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.31.032126/slatis-linux-arm64.tar.gz"
      sha256 "dbdc7fdd7653ed75e0a85c864ea5ab7e73b85988cc2e93ce97d29f6c3e9c95af"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
