class Aiculator < Formula
  desc "AI task swarm that runs coding tasks across harnesses"
  homepage "https://github.com/Grano22/aiculator"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Grano22/aiculator/releases/download/v0.5.1/aiculator_v0.5.1_darwin_arm64.tar.gz"
      sha256 "3375462aac5fcb7ea8f7ce5d2132fa57468c67899b31c6ddef1ca37538b2d567"
    end
    on_intel do
      url "https://github.com/Grano22/aiculator/releases/download/v0.5.1/aiculator_v0.5.1_darwin_amd64.tar.gz"
      sha256 "e6fe20384a04584cdaa45737df4b6f2040bd0bd020c23a02ef510d35fdc93b47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Grano22/aiculator/releases/download/v0.5.1/aiculator_v0.5.1_linux_arm64.tar.gz"
      sha256 "13fa8deb4c3fc3b2e9a566e4efdfde4fa375504ad1a9a3742ffb175097e16002"
    end
    on_intel do
      url "https://github.com/Grano22/aiculator/releases/download/v0.5.1/aiculator_v0.5.1_linux_amd64.tar.gz"
      sha256 "e4bc005a2333055b11a7db47d368bb167c4bf6d765bb076987d91294d41a7c46"
    end
  end

  uses_from_macos "git"

  def install
    bin.install "aiculator"
    doc.install "LICENSE", "THIRD_PARTY_NOTICES.md", "README.md", "CHANGELOG.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiculator --version")
  end
end
