class Pho < Formula
  desc "TUI for GitHub pull requests"
  homepage "https://github.com/utkarsh261/pho"
  version "1.0.5"
  license "GPL-3.0-or-later"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.5/pho_1.0.5_macOS_arm64.tar.gz"
      sha256 "ebb362015f2cacc0de5ca25c01bbcc5836655d89fffa29f6b182b43c8aea959f"
    end
    on_intel do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.5/pho_1.0.5_macOS_amd64.tar.gz"
      sha256 "5e9032862e767b9fdce9741b72335247cbd2e381bdb3b5a774bbdaf249d9b602"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.5/pho_1.0.5_linux_arm64.tar.gz"
      sha256 "d8d15212f0d40e9822c635721b48b4eadc4c599e12f108ee7ca972a0b4e80831"
    end
    on_intel do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.5/pho_1.0.5_linux_amd64.tar.gz"
      sha256 "b1a3e2ebf2230c41beaa59549753410e8425d75260485673ebedca3089648fb1"
    end
  end

  def install
    bin.install "pho"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pho --version")
  end
end
