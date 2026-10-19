class Pho < Formula
  desc "TUI for GitHub pull requests"
  homepage "https://github.com/utkarsh261/pho"
  version "1.0.3"
  license "GPL-3.0-or-later"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.3/pho_1.0.3_macOS_arm64.tar.gz"
      sha256 "3ef0e9ce0b90c5d18ceb3df2d10eaffe4a5ae4bf22c96920d011ce8fa38ae0b0"
    end
    on_intel do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.3/pho_1.0.3_macOS_amd64.tar.gz"
      sha256 "fe4b8d2613492723a38e368fa99a98a02105c8f532e115d58901c43321c46a03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.3/pho_1.0.3_linux_arm64.tar.gz"
      sha256 "957703da7c3ee29860b0fa6825e5ef844d09a7d2b7dab6b4f7e7af7a25be9d74"
    end
    on_intel do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.3/pho_1.0.3_linux_amd64.tar.gz"
      sha256 "8048fcecd10bd12d95755305820f8a023e5cad85a77354464525c618cb150f85"
    end
  end

  def install
    bin.install "pho"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pho --version")
  end
end
