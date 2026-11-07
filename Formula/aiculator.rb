class Aiculator < Formula
  desc "AI task swarm that runs coding tasks across harnesses"
  homepage "https://github.com/Grano22/aiculator"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Grano22/aiculator/releases/download/v0.9.1/aiculator_v0.9.1_darwin_arm64.tar.gz"
      sha256 "b6d6f42e3e6232949aa3237d0a6debe91aeead58460f768e7478750862cedf68"
    end
    on_intel do
      url "https://github.com/Grano22/aiculator/releases/download/v0.9.1/aiculator_v0.9.1_darwin_amd64.tar.gz"
      sha256 "6773dbb20776fff28e98e8c82616abba4116a8f947af1964b085d5adef0384b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Grano22/aiculator/releases/download/v0.9.1/aiculator_v0.9.1_linux_arm64.tar.gz"
      sha256 "cb31fd73dd5f894408cc3c5b9137fcef0697938fa0261cd40b0ca3591cfa0e84"
    end
    on_intel do
      url "https://github.com/Grano22/aiculator/releases/download/v0.9.1/aiculator_v0.9.1_linux_amd64.tar.gz"
      sha256 "e04837e6ab6af8b776aad3d78b4258d7b432702a020b8153b5cf532482007ec8"
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
