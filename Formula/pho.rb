class Pho < Formula
  desc "TUI for GitHub pull requests"
  homepage "https://github.com/utkarsh261/pho"
  version "1.0.0"
  license "GPL-3.0-or-later"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.0/pho_1.0.0_macOS_arm64.tar.gz"
      sha256 "014a2f2eec7b64e7eacf9ce83865f95ea5956b2f73dc41ec019f6c755f526c66"
    end
    on_intel do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.0/pho_1.0.0_macOS_amd64.tar.gz"
      sha256 "da62bb8953660840c67460bdb894df18ef5bdec225822fb2329eabe517b2ccb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.0/pho_1.0.0_linux_arm64.tar.gz"
      sha256 "b701808cf81cfe05322a38a9cf2faa5e0b05ea5baca7e60cdbcdf076f7cf97c7"
    end
    on_intel do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.0/pho_1.0.0_linux_amd64.tar.gz"
      sha256 "479848d3f50f55430ebc2394f1c1d5843c038f594fd40af036f37931771b920f"
    end
  end

  def install
    bin.install "pho"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pho --version")
  end
end
