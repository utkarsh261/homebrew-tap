class Pho < Formula
  desc "TUI for GitHub pull requests"
  homepage "https://github.com/utkarsh261/pho"
  version "1.0.1"
  license "GPL-3.0-or-later"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.1/pho_1.0.1_macOS_arm64.tar.gz"
      sha256 "c29899ae3fa0ca2e56f4a8324af0d1d9d5a45a886f6c49fa033b3091d6ea4c46"
    end
    on_intel do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.1/pho_1.0.1_macOS_amd64.tar.gz"
      sha256 "b2142693fb790dae56ad0fdcae6802f61ee681b20ea2f41aab5bc8e86b7e1e0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.1/pho_1.0.1_linux_arm64.tar.gz"
      sha256 "0412afa40d4e1d95d8fffa98b1ef32e58162758975af82795ca3b4bbe0696693"
    end
    on_intel do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.1/pho_1.0.1_linux_amd64.tar.gz"
      sha256 "fffbfe3028535699f404fd5d1771ddc21484bab0c4eef93160fdb03937dcde49"
    end
  end

  def install
    bin.install "pho"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pho --version")
  end
end
