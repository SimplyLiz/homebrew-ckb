class Ckb < Formula
  desc "Code intelligence orchestration layer for AI-assisted development"
  homepage "https://github.com/SimplyLiz/CodeMCP"
  version "9.4.0"

  on_macos do
    on_arm do
      url "https://github.com/SimplyLiz/CodeMCP/releases/download/v9.4.0/ckb_9.4.0_darwin_arm64.tar.gz"
      sha256 "faacbe538736a7c08ab4ac3d6c6b37935b8139ece1ac5cdd857a53c216ef41db"
    end
    on_intel do
      url "https://github.com/SimplyLiz/CodeMCP/releases/download/v9.4.0/ckb_9.4.0_darwin_amd64.tar.gz"
      sha256 "02d19bb0209a21c024bbce2076f334f35d3972d23ae32c17977bf8350b0d8952"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SimplyLiz/CodeMCP/releases/download/v9.4.0/ckb_9.4.0_linux_arm64.tar.gz"
      sha256 "450e7896a381f7fc4006c371c7dac5d5c7c2fd58dacba644a16b91bb378b1a2b"
    end
    on_intel do
      url "https://github.com/SimplyLiz/CodeMCP/releases/download/v9.4.0/ckb_9.4.0_linux_amd64.tar.gz"
      sha256 "4d245246b3a106bd07bcf7106fb01f0c59c60abc30ab2b8a0383499bfe502813"
    end
  end

  def install
    bin.install "ckb"
    prefix.install "LICENSE", "THIRD-PARTY-LICENSES"
  end

  def caveats
    <<~EOS
      What's new
        • Done check: `ckb changes --check` lists every use of a changed
          declaration your diff left untouched
        • findReferences over MCP is far smaller: plain text, one line per use
        • Upgrades no longer need a fresh .ckb

      CKB is built by one developer, and I want it to stay free for the people
      who make software on their own or are just getting started. It's free for
      personal use, open source projects, and organizations under $25k annual
      revenue.

      If your organization is above that, please get a license. It's what keeps
      CKB going, and I appreciate it: https://codeknowledge.dev/pricing?ref=brew-9.4

      I'd love to hear from you, good or bad:
        GitHub   https://github.com/SimplyLiz/ckb/discussions
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ckb version")
  end
end
