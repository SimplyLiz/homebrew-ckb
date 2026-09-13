class Ckb < Formula
  desc "Code intelligence orchestration layer for AI-assisted development"
  homepage "https://github.com/SimplyLiz/CodeMCP"
  version "9.3.1"

  on_macos do
    on_arm do
      url "https://github.com/SimplyLiz/CodeMCP/releases/download/v9.3.1/ckb_9.3.1_darwin_arm64.tar.gz"
      sha256 "ec56bd6cfcb3462bb5d766d10094141eb17c16678bece5a33331a6e96e3f8c35"
    end
    on_intel do
      url "https://github.com/SimplyLiz/CodeMCP/releases/download/v9.3.1/ckb_9.3.1_darwin_amd64.tar.gz"
      sha256 "093bffba3747a3e5828d626a3087c5a1a9a75ab407a5d79a70cf1e1e539bde9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SimplyLiz/CodeMCP/releases/download/v9.3.1/ckb_9.3.1_linux_arm64.tar.gz"
      sha256 "3cc2a89446830696994be1747e759a9e2970feed1be4b60f33b707ecdb5d04f5"
    end
    on_intel do
      url "https://github.com/SimplyLiz/CodeMCP/releases/download/v9.3.1/ckb_9.3.1_linux_amd64.tar.gz"
      sha256 "eb3b5aec3d2852c202386db7d57a020d352be7b732ed8bbf0b0cfb0b2d10dc2e"
    end
  end

  def install
    bin.install "ckb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ckb version")
  end
end
