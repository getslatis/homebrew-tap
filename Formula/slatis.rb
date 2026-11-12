# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.12.091635"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.12.091635/slatis-darwin-arm64.tar.gz"
    sha256 "4a3360104d7df9d926a4ba889a6410200de127aa2a489962f266590d1a5532cc"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.12.091635/slatis-linux-amd64.tar.gz"
      sha256 "11eb4c484ed6a535ef99b20af26907face8bc006ed1997571d43d3ba7951cb06"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.12.091635/slatis-linux-arm64.tar.gz"
      sha256 "dd4757c6bb2154ad7edb63a15d93e2a1e979b7491978ac540307347edc7a1a19"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
