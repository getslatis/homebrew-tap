# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.8.054201"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.8.054201/slatis-darwin-arm64.tar.gz"
    sha256 "cbd4d7db31ae43627951e93b99ca48fe843421f13515c5bea6a86aa7b7258a94"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.8.054201/slatis-linux-amd64.tar.gz"
      sha256 "b376049d004ec7b61074c666330b0ac411c165dfecc5870b9d77b9d7c8d8ab32"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.8.054201/slatis-linux-arm64.tar.gz"
      sha256 "98bc534fa80a82743f30d076edf20975d37296d9f452b32a9d9083858a45d7cc"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
