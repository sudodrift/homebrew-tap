class Sudodrift < Formula
  desc "Linux permission drift detector for sudo, SSH keys and SUID files"
  homepage "https://github.com/sudodrift/sudodrift"
  version "0.2.0"
  license "MIT"

  # sudodrift only works on Linux, so there is no macOS block on purpose.
  on_linux do
    on_intel do
      url "https://github.com/sudodrift/sudodrift/releases/download/v0.2.0/sudodrift_0.2.0_linux_amd64.tar.gz"
      sha256 "2934cb9d01a2f11861016acc2a6f0dde5519e1ae36cd94ed26dcf9a8a5e8433a"
    end
    on_arm do
      url "https://github.com/sudodrift/sudodrift/releases/download/v0.2.0/sudodrift_0.2.0_linux_arm64.tar.gz"
      sha256 "43e07ec7a3851990cbb85b07b60271159551fb66e37d558f1a1780187d4ce721"
    end
  end

  def install
    bin.install "sudodrift"
  end

  test do
    assert_match "sudodrift", shell_output("#{bin}/sudodrift version")
  end
end
