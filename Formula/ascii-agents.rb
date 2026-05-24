class AsciiAgents < Formula
  desc "Terminal pixel-art office for AI coding agents"
  homepage "https://github.com/IvanWng97/ascii-agents"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/IvanWng97/ascii-agents/releases/download/v0.1.1/ascii-agents-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "91f1b76585d95e26bfc4acc3aec624d157fc3fcf4abaabb91dc9a0411928625a"
    end
    on_intel do
      url "https://github.com/IvanWng97/ascii-agents/releases/download/v0.1.1/ascii-agents-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "a2ea0ef5b7fcf15ba954768b6d0770127f40803359f0b7d8e5838480df873ef0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IvanWng97/ascii-agents/releases/download/v0.1.1/ascii-agents-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "660e99169ccf4e736c3625b77217a3de3fcd5986f9ff2f30ed7001501784c109"
    end
    on_intel do
      url "https://github.com/IvanWng97/ascii-agents/releases/download/v0.1.1/ascii-agents-v0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6c1d024fccb2e6f0b8516f13bcc9e4239dba22fb4a630e97fb1f9b0431a792c2"
    end
  end

  def install
    bin.install "ascii-agents"
    bin.install "ascii-agents-hook"
  end

  def caveats
    <<~EOS
      To start visualizing your Claude Code sessions:
        ascii-agents install-hooks
        ascii-agents run

      Before uninstalling, remove hooks from Claude Code:
        ascii-agents uninstall-hooks
    EOS
  end

  test do
    assert_match "ascii-agents", shell_output("#{bin}/ascii-agents --version")
  end
end
