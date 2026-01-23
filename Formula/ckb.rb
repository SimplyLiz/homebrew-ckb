class Ckb < Formula
  desc "Code intelligence orchestration layer for AI-assisted development"
  homepage "https://github.com/SimplyLiz/CodeMCP"
  license :cannot_represent
  version "8.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SimplyLiz/CodeMCP/releases/download/v#{version}/ckb_#{version}_darwin_arm64.tar.gz"
      sha256 "92abb8c7b3cf767c9e764bf960dec07cc104f73139a79cdf1ae14e9fbccfffe0"
    else
      url "https://github.com/SimplyLiz/CodeMCP/releases/download/v#{version}/ckb_#{version}_darwin_amd64.tar.gz"
      sha256 "f9edc40c14fdb1ce371e73198af8cb6f7f20dc012aa20de18a9c19d7119ba5b4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SimplyLiz/CodeMCP/releases/download/v#{version}/ckb_#{version}_linux_arm64.tar.gz"
      sha256 "034ced43b5998beabbdc5f14e7107235ba6905076a9972195de5c36ef4d254a1"
    else
      url "https://github.com/SimplyLiz/CodeMCP/releases/download/v#{version}/ckb_#{version}_linux_amd64.tar.gz"
      sha256 "d195987993e53cea44975e00ad55da8e0effab740f9c39f63a0fa8cd2197841f"
    end
  end

  def install
    bin.install "ckb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ckb version")
  end
end
