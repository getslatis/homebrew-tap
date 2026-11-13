# Written by each deploy of Slatis; a change here is overwritten by the next.
class Slatis < Formula
  desc "CLI of Slatis, where a team directs agents to produce software"
  homepage "https://slatis.com"
  version "2026.11.12.235158"

  on_macos do
    depends_on arch: :arm64
    url "https://slatis.com/download/2026.11.12.235158/slatis-darwin-arm64.tar.gz"
    sha256 "1bc2bd7e59e8f0fdb870b4adfa4d5ab149601cfb7952b5f77a5993d2ea1ee4b7"
  end

  on_linux do
    on_intel do
      url "https://slatis.com/download/2026.11.12.235158/slatis-linux-amd64.tar.gz"
      sha256 "7c26ce9221a69ffe2e2328eb1b3fcb4bc4e86284efdf7e485d602d55846b0f3c"
    end
    on_arm do
      url "https://slatis.com/download/2026.11.12.235158/slatis-linux-arm64.tar.gz"
      sha256 "0f2a08978461c8a540062b6fa7d505a0fd846e1db4f29c1b83fde8400b88d010"
    end
  end

  def install
    bin.install "slatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slatis version")
  end
end
