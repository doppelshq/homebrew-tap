class Doppels < Formula
  desc "Freeze agent sessions into local deterministic recipes"
  homepage "https://doppels.so"
  version "0.0.0-dev.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/doppelshq/doppels/releases/download/v0.0.0-dev.1/doppels_0.0.0-dev.1_darwin_arm64.tar.gz"
      sha256 "ec72af1acabf689d9cdc5f94b4e7bbae41dddd9e13b6e32a4356712dd88bd079"
    end
    on_intel do
      url "https://github.com/doppelshq/doppels/releases/download/v0.0.0-dev.1/doppels_0.0.0-dev.1_darwin_amd64.tar.gz"
      sha256 "4d4b1d8179f2f548117ae825e920cec400151c2d8c0cca11c546b408230755a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/doppelshq/doppels/releases/download/v0.0.0-dev.1/doppels_0.0.0-dev.1_linux_arm64.tar.gz"
      sha256 "2b201ae03ba1cff9b3e801a5d61157411128f9c1365a971cc4a42851c9b2f2ab"
    end
    on_intel do
      url "https://github.com/doppelshq/doppels/releases/download/v0.0.0-dev.1/doppels_0.0.0-dev.1_linux_amd64.tar.gz"
      sha256 "40a7be10bb4680a090f2086332fff39e6619bd47e4c1d709a86e5a4890a46b32"
    end
  end

  def install
    bin.install "doppels"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doppels --version")
  end
end
