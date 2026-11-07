# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.7.072913"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.7.072913/slatis-darwin-arm64.tar.gz"
    sha256 "288c3962191ae2cee8bffe749b4f971ab06ec496c25a97afdf6bf889e8bbae70"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.7.072913/slatis-linux-amd64.tar.gz"
      sha256 "8b2a2bd20c286beb6046699c1d290f5c2a6febedea72461c2a3055c78e57a6a2"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.7.072913/slatis-linux-arm64.tar.gz"
      sha256 "99872462fb5862a9cc748c61e39975143b15df7ef1eb1bfcf4f16d441fd06954"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
