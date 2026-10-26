# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.26.234652"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.26.234652/slatis-darwin-arm64.tar.gz"
    sha256 "8e168c2944966c91c1bd27c175f01f999ff7bd30a4e6932a8d3f45edd7e34e74"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.26.234652/slatis-linux-amd64.tar.gz"
      sha256 "bf2ee76cb2bf56d42c798c267de1a7f0a7a4c2dc3aae57d7630afd19b64a93f8"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.26.234652/slatis-linux-arm64.tar.gz"
      sha256 "6df4a3d39bcf2340eb849f3b2962c45308d2725df54b36303c91089bfb5b64bf"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
