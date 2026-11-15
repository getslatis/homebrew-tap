# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.15.224529"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.15.224529/slatis-darwin-arm64.tar.gz"
    sha256 "6647559c5281b609e30d4e7a4d51ab267172ec3b9fab4b27d06819aded6a5e6e"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.15.224529/slatis-linux-amd64.tar.gz"
      sha256 "444ae114e249ace29c82a0f816b5623d7b87df7e547791bfeb7b23ad6c54b7f3"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.15.224529/slatis-linux-arm64.tar.gz"
      sha256 "d81be3e848c0c764d9ca4c129ca40895e97c3b7a6060f8cc1b55e2bb82857e85"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
