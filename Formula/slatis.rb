# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.22.232827"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.22.232827/slatis-darwin-arm64.tar.gz"
    sha256 "6876fa480c8b83d57d9dd2bdab6750d166cab7077fa69fc1bab1c738f42b6c09"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.22.232827/slatis-linux-amd64.tar.gz"
      sha256 "292ab44aba2df97a4b4b9b5259407a297c515a8aff0cb83702c18648bd2cfb0d"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.22.232827/slatis-linux-arm64.tar.gz"
      sha256 "31f54e8785da4ec50f1453a324f8cc9685d50945fb4b598826ff3c5f059cde89"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
