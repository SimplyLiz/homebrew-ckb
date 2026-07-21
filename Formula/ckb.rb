class Ckb < Formula
  desc "Code intelligence orchestration layer for AI-assisted development"
  homepage "https://github.com/SimplyLiz/CodeMCP"
  version "9.3.0"

  on_macos do
    on_arm do
      url "https://github.com/SimplyLiz/CodeMCP/releases/download/v9.3.0/ckb_9.3.0_darwin_arm64.tar.gz"
      sha256 "08febe41bf788a0284ab74a887686ddb5662d983a87aa31918e19bbc4f621d78"
    end
    on_intel do
      url "https://github.com/SimplyLiz/CodeMCP/releases/download/v9.3.0/ckb_9.3.0_darwin_amd64.tar.gz"
      sha256 "7d46726b6be0a973985bef9fdb126f48b04ea481b510fac15cebf3e1fa0f4752"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SimplyLiz/CodeMCP/releases/download/v9.3.0/ckb_9.3.0_linux_arm64.tar.gz"
      sha256 "588acf8ce63e88a5adaba2a0aab50363de606799d54b4586457e082618caf96f"
    end
    on_intel do
      url "https://github.com/SimplyLiz/CodeMCP/releases/download/v9.3.0/ckb_9.3.0_linux_amd64.tar.gz"
      sha256 "87225e0ed98fd9ecf857d86008f451fa34de20ea3546d5c01660490296edf397"
    end
  end

  def install
    bin.install "ckb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ckb version")
  end
end
