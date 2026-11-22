class Ckb < Formula
  desc "Code intelligence orchestration layer for AI-assisted development"
  homepage "https://github.com/SimplyLiz/CodeMCP"
  version "9.4.0"
  revision 1

  on_macos do
    on_arm do
      url "https://github.com/SimplyLiz/CodeMCP/releases/download/v9.4.0/ckb_9.4.0_darwin_arm64.tar.gz"
      sha256 "bcc1d07a55ef5583909a8adac2052371cc9c161b79054f1dac7fcf4c961a72da"
    end
    on_intel do
      url "https://github.com/SimplyLiz/CodeMCP/releases/download/v9.4.0/ckb_9.4.0_darwin_amd64.tar.gz"
      sha256 "3a883ff682cfa0a7fe1bb7dd5869ab02c5b7ac7434393f4920d673f97f5a1834"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SimplyLiz/CodeMCP/releases/download/v9.4.0/ckb_9.4.0_linux_arm64.tar.gz"
      sha256 "e6f757794201300055212473c2f6dc8072e08cc13cdbd0c48c457473d9777a51"
    end
    on_intel do
      url "https://github.com/SimplyLiz/CodeMCP/releases/download/v9.4.0/ckb_9.4.0_linux_amd64.tar.gz"
      sha256 "f4ea2a65a52bf0eea9a64eae75f3b4df1c91788f68ac0e169be12c6f24835d99"
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
