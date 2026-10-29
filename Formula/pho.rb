class Pho < Formula
  desc "TUI for GitHub pull requests"
  homepage "https://github.com/utkarsh261/pho"
  version "1.0.6"
  license "GPL-3.0-or-later"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.6/pho_1.0.6_macOS_arm64.tar.gz"
      sha256 "7055fb932d813a27079c5a2a444d434182457caf5c24d64359c763daa36b9fa6"
    end
    on_intel do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.6/pho_1.0.6_macOS_amd64.tar.gz"
      sha256 "c55e9382594b5c517be484d38bc72b4da1da70343ebfa6510b5aa94120b0a630"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.6/pho_1.0.6_linux_arm64.tar.gz"
      sha256 "dcf0e06040bbba0b28484b8a2417c8bb6c4e1f0c7d4acf3c5054cd00a390ebb0"
    end
    on_intel do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.6/pho_1.0.6_linux_amd64.tar.gz"
      sha256 "5e0e2095f0ae5673b18a52633e9e2725fa246991c31ebc6a1b896253d51c79b6"
    end
  end

  def install
    bin.install "pho"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pho --version")
  end
end
