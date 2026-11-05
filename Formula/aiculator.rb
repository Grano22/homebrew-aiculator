class Aiculator < Formula
  desc "AI task swarm that runs coding tasks across harnesses"
  homepage "https://github.com/Grano22/aiculator"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Grano22/aiculator/releases/download/v0.7.0/aiculator_v0.7.0_darwin_arm64.tar.gz"
      sha256 "c19ba60c7cf83e4abbbbac7bfa14351947d83cb54ddabc500bc235fe044ee803"
    end
    on_intel do
      url "https://github.com/Grano22/aiculator/releases/download/v0.7.0/aiculator_v0.7.0_darwin_amd64.tar.gz"
      sha256 "93803c756b44a8a1817444a4da2ea98c4c7e6a3a9585f15009d6ec54c208dbe4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Grano22/aiculator/releases/download/v0.7.0/aiculator_v0.7.0_linux_arm64.tar.gz"
      sha256 "9fdde18be2a9d96a62b2b7ed78bd5557135cb0e9d3c541268a528263055673f9"
    end
    on_intel do
      url "https://github.com/Grano22/aiculator/releases/download/v0.7.0/aiculator_v0.7.0_linux_amd64.tar.gz"
      sha256 "72be665bb0433cfcd0434319f72768e12a4ad603099e0087d2749ce9df86c8f5"
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
