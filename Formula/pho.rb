class Pho < Formula
  desc "TUI for GitHub pull requests"
  homepage "https://github.com/utkarsh261/pho"
  version "1.0.2"
  license "GPL-3.0-or-later"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.2/pho_1.0.2_macOS_arm64.tar.gz"
      sha256 "4c1da3fba10aa2ece6a1bd3646cfcafd5bfdab568965a2fcec6757e481addfd8"
    end
    on_intel do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.2/pho_1.0.2_macOS_amd64.tar.gz"
      sha256 "d1af299017fe30517d2a7deb1791b2c8519032abadab4350912044913c0031b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.2/pho_1.0.2_linux_arm64.tar.gz"
      sha256 "9702fb2d9f6279154adb206dda04ebf58b864ad5f9fa99f45fc97e2e3d7129cf"
    end
    on_intel do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.2/pho_1.0.2_linux_amd64.tar.gz"
      sha256 "8ab45a9b4f030530ee882254f16c196a59ad8d903d5826fb8c5e2620ad33fa44"
    end
  end

  def install
    bin.install "pho"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pho --version")
  end
end
