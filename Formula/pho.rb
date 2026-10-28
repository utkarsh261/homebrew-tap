class Pho < Formula
  desc "TUI for GitHub pull requests"
  homepage "https://github.com/utkarsh261/pho"
  version "1.0.4"
  license "GPL-3.0-or-later"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.4/pho_1.0.4_macOS_arm64.tar.gz"
      sha256 "b9a4a01a3dc0af09755b4e437d18e5a511d832a51691ddb242a54364a90e56e3"
    end
    on_intel do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.4/pho_1.0.4_macOS_amd64.tar.gz"
      sha256 "648759ab71d5ae6866af1bac445aef1a72e8d9586132757195a999efa7b6e52a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.4/pho_1.0.4_linux_arm64.tar.gz"
      sha256 "ab0db116170cd0cf0d57da3ffbd3ec6473ef4bc790234564cf562b6658add52e"
    end
    on_intel do
      url "https://github.com/utkarsh261/pho/releases/download/v1.0.4/pho_1.0.4_linux_amd64.tar.gz"
      sha256 "7b5a618539ffaaccb9a5d5dfe3ca4c26d247d05dd462d6632f1ab493473e96eb"
    end
  end

  def install
    bin.install "pho"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pho --version")
  end
end
