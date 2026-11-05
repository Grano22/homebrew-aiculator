class Aiculator < Formula
  desc "AI task swarm that runs coding tasks across harnesses"
  homepage "https://github.com/Grano22/aiculator"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Grano22/aiculator/releases/download/v0.6.0/aiculator_v0.6.0_darwin_arm64.tar.gz"
      sha256 "d21de0f081ba5a549eabd0b15ce233880c0de58393b0499a2ce557311fa25dd3"
    end
    on_intel do
      url "https://github.com/Grano22/aiculator/releases/download/v0.6.0/aiculator_v0.6.0_darwin_amd64.tar.gz"
      sha256 "a850cf96b84456fda861e454b081501dd5d86a1821db887abd7761202487c37b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Grano22/aiculator/releases/download/v0.6.0/aiculator_v0.6.0_linux_arm64.tar.gz"
      sha256 "2093d75673289d0219eff3496e18742678d52153fb07b73ac2b57bdde2c61944"
    end
    on_intel do
      url "https://github.com/Grano22/aiculator/releases/download/v0.6.0/aiculator_v0.6.0_linux_amd64.tar.gz"
      sha256 "9560982892bcbc05d98e5134a133cb26eb57441a432344945a324650c8064d12"
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
