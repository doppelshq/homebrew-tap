class Doppels < Formula
  desc "Freeze agent sessions into local deterministic recipes"
  homepage "https://doppels.so"
  version "0.0.0-dev.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/doppelshq/doppels/releases/download/v0.0.0-dev.0/doppels_0.0.0-dev.0_darwin_arm64.tar.gz"
      sha256 "ed46a1a721bea458bf8f38efbd3568d88922f4021fe7a1f48e60793e15155f73"
    end
    on_intel do
      url "https://github.com/doppelshq/doppels/releases/download/v0.0.0-dev.0/doppels_0.0.0-dev.0_darwin_amd64.tar.gz"
      sha256 "a94d06743ca48296cb8b329295d12ba5fcaf5d607c4ae343e3ff743f9381401f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/doppelshq/doppels/releases/download/v0.0.0-dev.0/doppels_0.0.0-dev.0_linux_arm64.tar.gz"
      sha256 "e35037dd85481659fc195454e9e46b184319c8bb387effd561e4ffbebe1f2c43"
    end
    on_intel do
      url "https://github.com/doppelshq/doppels/releases/download/v0.0.0-dev.0/doppels_0.0.0-dev.0_linux_amd64.tar.gz"
      sha256 "d453c11d94f78008f3fffe57c239ec324aa63f89e7c1c76e3a84a02a210f5ae7"
    end
  end

  def install
    bin.install "doppels"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doppels --version")
  end
end
