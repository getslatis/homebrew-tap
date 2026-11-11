# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.11.010451"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.11.010451/slatis-darwin-arm64.tar.gz"
    sha256 "f9dd41606dfc9dc95ece04434252abf4af4eeba07dac75fd81aeae35922d0d45"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.11.010451/slatis-linux-amd64.tar.gz"
      sha256 "5725d7eb610c9b247d8137dfa8a141cde7d99fd1124094d9a5d66f4576217dad"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.11.010451/slatis-linux-arm64.tar.gz"
      sha256 "3d19a9febdd3f6f9e1af5ed8bf72663a4b93aebed1eecd016fc057b894b21a5d"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
