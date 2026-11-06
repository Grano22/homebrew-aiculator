class Aiculator < Formula
  desc "AI task swarm that runs coding tasks across harnesses"
  homepage "https://github.com/Grano22/aiculator"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Grano22/aiculator/releases/download/v0.8.0/aiculator_v0.8.0_darwin_arm64.tar.gz"
      sha256 "5ed5b730ba1608612b07067bbd004a96c8f12d91e17634ecc1d8309bffd2488f"
    end
    on_intel do
      url "https://github.com/Grano22/aiculator/releases/download/v0.8.0/aiculator_v0.8.0_darwin_amd64.tar.gz"
      sha256 "d11f217d68edd3e4bb678dcaa2e715e3b360e0e539445d6dd4a5fcf408dcae14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Grano22/aiculator/releases/download/v0.8.0/aiculator_v0.8.0_linux_arm64.tar.gz"
      sha256 "7e1698b83ae9d00f8b107b3b6280e2fc7e3e71aa66f45bffe03b9134ea80e562"
    end
    on_intel do
      url "https://github.com/Grano22/aiculator/releases/download/v0.8.0/aiculator_v0.8.0_linux_amd64.tar.gz"
      sha256 "65a37717a73a8b1d027899ec91fe49f46f0128e1b18f668e3a82aa2ab58158e5"
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
