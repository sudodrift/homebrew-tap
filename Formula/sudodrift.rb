class Sudodrift < Formula
  desc "Linux permission drift detector for sudo, SSH keys and SUID files"
  homepage "https://github.com/sudodrift/sudodrift"
  version "0.4.0"
  license "MIT"

  # sudodrift only works on Linux, so there is no macOS block on purpose.
  on_linux do
    on_intel do
      url "https://github.com/sudodrift/sudodrift/releases/download/v0.4.0/sudodrift_0.4.0_linux_amd64.tar.gz"
      sha256 "96abb222cee3d3f7b6e14df9b4ef1534d114bbf8d94dcb1267f3fa126615f9a0"
    end
    on_arm do
      url "https://github.com/sudodrift/sudodrift/releases/download/v0.4.0/sudodrift_0.4.0_linux_arm64.tar.gz"
      sha256 "85b3ae553c81717baea5aaf7f54e4cce211462e7ac795f6a880119b7d81cadf9"
    end
  end

  def install
    bin.install "sudodrift"
  end

  test do
    assert_match "sudodrift", shell_output("#{bin}/sudodrift version")
  end
end
