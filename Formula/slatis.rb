# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.8.030438"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.8.030438/slatis-darwin-arm64.tar.gz"
    sha256 "3a6cc25179ad4cf2ab6f93a5b2dca6d52e1f5928de556820082fdaf9024c575f"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.8.030438/slatis-linux-amd64.tar.gz"
      sha256 "8443ee7fa4e7a7b20864331a9e8c3b72dda72ad575a2d51bc6df06896a4d06d7"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.8.030438/slatis-linux-arm64.tar.gz"
      sha256 "b7ccfa744eedfe6b9b95bf9db547903ba8f4041067aee7836968855bbad15bd7"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
