class Aiculator < Formula
  desc "AI task swarm that runs coding tasks across harnesses"
  homepage "https://github.com/Grano22/aiculator"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Grano22/aiculator/releases/download/v0.4.0/aiculator_v0.4.0_darwin_arm64.tar.gz"
      sha256 "3e9a75d99b4d6b7262ef8b6162d5534de341342207bf13c9c6ad444e2558a5fa"
    end
    on_intel do
      url "https://github.com/Grano22/aiculator/releases/download/v0.4.0/aiculator_v0.4.0_darwin_amd64.tar.gz"
      sha256 "d7669b71fd3401c2c24c89d49f82869f253daed232b9bb45c9f7022b1035fb66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Grano22/aiculator/releases/download/v0.4.0/aiculator_v0.4.0_linux_arm64.tar.gz"
      sha256 "54f5e931a5a8e1c33ef02c95d231370e538351e8026768f4d1617a02b2570f8e"
    end
    on_intel do
      url "https://github.com/Grano22/aiculator/releases/download/v0.4.0/aiculator_v0.4.0_linux_amd64.tar.gz"
      sha256 "4804952437b5f6bf433da6a86afbc9a85d31981a7fae8e7403d23ec090a54139"
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
