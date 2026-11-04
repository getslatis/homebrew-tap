# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.4.164500"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.4.164500/slatis-darwin-arm64.tar.gz"
    sha256 "8918385f3ad5e40ff42302e435537181e1e27955a2f618f2abb94479f4a13366"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.4.164500/slatis-linux-amd64.tar.gz"
      sha256 "04117f8cf4cfd9a39bdf6497719ca72858bb6471bc434bbcf6543b68afc2760f"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.4.164500/slatis-linux-arm64.tar.gz"
      sha256 "14cc3706bab20b210f2dc7f65c47cfce96f800559ae048b81330e8f5d8f6d19a"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
