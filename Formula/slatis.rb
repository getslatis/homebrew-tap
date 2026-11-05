# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.5.022752"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.5.022752/slatis-darwin-arm64.tar.gz"
    sha256 "fc979ba164ae69381ee2fa62a2719ab236c912edc93befe5af38d6cb38c38d45"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.5.022752/slatis-linux-amd64.tar.gz"
      sha256 "fb138db2331dcf998e92ce0c563055ae70ffd7ceaa10c42841c2539e51770e80"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.5.022752/slatis-linux-arm64.tar.gz"
      sha256 "b93eaef4fc246d9657b4877ae140c7edde52c8a166f770fb96538e0b5afec7c6"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
