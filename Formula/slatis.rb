# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.3.000912"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.3.000912/slatis-darwin-arm64.tar.gz"
    sha256 "03824eb4f2a55ca434278fd6087dd39c726f40eab8ae0e783586fbc561ba0557"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.3.000912/slatis-linux-amd64.tar.gz"
      sha256 "ab86d32a99c67397311df17f023a742af05b9021e16b66d3a717194bad5fafcc"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.3.000912/slatis-linux-arm64.tar.gz"
      sha256 "bde8ca159693db5a6d5042d37333623a6c72185a54160a49fef5b2b647dfa4d1"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
