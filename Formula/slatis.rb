# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.10.31.012256"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.10.31.012256/slatis-darwin-arm64.tar.gz"
    sha256 "dd2f9590920d203a5ab2c1f19ea682d81b98b8cb419f98bd703d3ccc752881c5"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.10.31.012256/slatis-linux-amd64.tar.gz"
      sha256 "62b059ecf9dc7e238cda1ab259f601f3459036092537c7a4d76e6c6e447cdb40"
    end
    on_arm do
      url "https://slatis.com/download/2026.10.31.012256/slatis-linux-arm64.tar.gz"
      sha256 "eadfe47a8eb49bff036e31932751b624977561205bb5d124454f74f6a2c83a92"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
