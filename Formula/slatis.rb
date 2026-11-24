# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.24.004030"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.24.004030/slatis-darwin-arm64.tar.gz"
    sha256 "4517eefa42f62c0f80405d05aa9fe7974a009ba8b218ed7c17c91bdf742824c7"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.24.004030/slatis-linux-amd64.tar.gz"
      sha256 "c72d29130d0bacbf9df8faa263a291efe7c999674f4d3777293ee93875318e3e"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.24.004030/slatis-linux-arm64.tar.gz"
      sha256 "de1952e275e3ac915b60168480e50f5b2e7044fd8fad6262fe64bfdea42dbf6a"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
