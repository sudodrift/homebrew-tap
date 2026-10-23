class Permdrift < Formula
  desc "Linux permission drift detector for sudo, SSH keys and SUID files"
  homepage "https://github.com/permdrift/permdrift"
  version "0.1.0"
  license "MIT"

  # permdrift only works on Linux, so there is no macOS block on purpose.
  on_linux do
    on_intel do
      url "https://github.com/permdrift/permdrift/releases/download/v0.1.0/permdrift_0.1.0_linux_amd64.tar.gz"
      sha256 "09564c6d29d877fbdb58d381e8d09d82c66da3d6a6d7516f2f556a37ab87bbda"
    end
    on_arm do
      url "https://github.com/permdrift/permdrift/releases/download/v0.1.0/permdrift_0.1.0_linux_arm64.tar.gz"
      sha256 "48c3f66f1ba14d956cac855cb30f6157561ef343aca18af67d93fea0a99c66ff"
    end
  end

  def install
    bin.install "permdrift"
  end

  test do
    assert_match "permdrift", shell_output("#{bin}/permdrift version")
  end
end
