class Pho < Formula
  desc "TUI for GitHub pull requests"
  homepage "https://github.com/utkarsh261/pho"
  version "0.1.49"
  license "GPL-3.0-or-later"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/utkarsh261/pho/releases/download/v0.1.49/pho_0.1.49_macOS_arm64.tar.gz"
      sha256 "8c047319c43c50782fab752bdbf864bb04d8314496de8625ad4660da41079f36"
    end
    on_intel do
      url "https://github.com/utkarsh261/pho/releases/download/v0.1.49/pho_0.1.49_macOS_amd64.tar.gz"
      sha256 "9760932d16949b47f9c0bb3859e0ae90ff76e9cd314188acd270c806f2150b9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/utkarsh261/pho/releases/download/v0.1.49/pho_0.1.49_linux_arm64.tar.gz"
      sha256 "4e890d825b947bf231fb2e2b07079d4ca75c45e893fc37bb0f7afc36e897cf71"
    end
    on_intel do
      url "https://github.com/utkarsh261/pho/releases/download/v0.1.49/pho_0.1.49_linux_amd64.tar.gz"
      sha256 "dabeeeb1b48b728cc578b233b89e317397799f76b40eea910eb061f061a9daf4"
    end
  end

  def install
    bin.install "pho"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pho --version")
  end
end
