# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.25.235750"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.25.235750/slatis-darwin-arm64.tar.gz"
    sha256 "6f7ec9753ddc20419d7d750ce1b59e8bd1b2012f9206864cafa406150766eeea"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.25.235750/slatis-linux-amd64.tar.gz"
      sha256 "04ee49c55f39689b067b5e2e21aa3c794d3806d335602fefb242ca6c0c26173d"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.25.235750/slatis-linux-arm64.tar.gz"
      sha256 "47df5804ff3e344ee841f8f01aba3288351e0b996a12aef3984d317c24643b9a"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
