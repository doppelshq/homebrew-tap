class Doppels < Formula
  desc "Freeze agent sessions into local deterministic recipes"
  homepage "https://doppels.so"
  version "0.1.0-alpha.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/doppelshq/doppels/releases/download/v0.1.0-alpha.1/doppels_0.1.0-alpha.1_darwin_arm64.tar.gz"
      sha256 "3b4db5c7b3ee3f0d1df9b728a5ef930ea18cea6ee0de8dd1d1f158c1287bcedb"
    end
    on_intel do
      url "https://github.com/doppelshq/doppels/releases/download/v0.1.0-alpha.1/doppels_0.1.0-alpha.1_darwin_amd64.tar.gz"
      sha256 "c7f56f2297aaebcc57d4db300d0d81df1839f67c304ae3855b4770f33fd674e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/doppelshq/doppels/releases/download/v0.1.0-alpha.1/doppels_0.1.0-alpha.1_linux_arm64.tar.gz"
      sha256 "d631c4c7ee1ad09039e5854aa8abff5a10626403bfe1f37a880310514853979d"
    end
    on_intel do
      url "https://github.com/doppelshq/doppels/releases/download/v0.1.0-alpha.1/doppels_0.1.0-alpha.1_linux_amd64.tar.gz"
      sha256 "9aa651e130386bf459dce1ad2045588167b3cc555c73577146599fa2adefc9d8"
    end
  end

  def install
    bin.install "doppels"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doppels --version")
  end
end
