# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.8.023119"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.8.023119/slatis-darwin-arm64.tar.gz"
    sha256 "065a0449e88d59fecee123d87cffe40f5844271c688be00b20272dabdc1e494e"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.8.023119/slatis-linux-amd64.tar.gz"
      sha256 "a7e55a3a191007148b0661372da9e537b7b14ebf1044138353b376211088a967"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.8.023119/slatis-linux-arm64.tar.gz"
      sha256 "a6ac139dea81b90ef9d981f312ec5ff4aa08c33b378bdd4a755b97bd08671529"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
