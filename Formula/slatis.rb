# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.22.004052"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.22.004052/slatis-darwin-arm64.tar.gz"
    sha256 "50a7a609fb096a65178342adfbb1f557cf9987611bd890d71723d6c543823bfc"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.22.004052/slatis-linux-amd64.tar.gz"
      sha256 "09759c32c620d32a4da023fb527015ff3ccba13a37b93e75860db2b30171dee8"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.22.004052/slatis-linux-arm64.tar.gz"
      sha256 "6dd87df690729f807fd9c972035f0842da7f265dcf42499f3cad8297f2af4ef7"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
