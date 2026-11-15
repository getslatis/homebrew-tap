# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.15.012641"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.15.012641/slatis-darwin-arm64.tar.gz"
    sha256 "b9aa42da1255497687df9664ac2abb803c2dd4657ee586f852310951b8360bae"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.15.012641/slatis-linux-amd64.tar.gz"
      sha256 "cdfa2469063a318cb47ac86118dbcbbca3623d95f33d1d8a3aed2fa85eb2bbe7"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.15.012641/slatis-linux-arm64.tar.gz"
      sha256 "a314026d04df06fc7b143f08152003a67fd4e3853a1c946f47a64aaaa5517805"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
