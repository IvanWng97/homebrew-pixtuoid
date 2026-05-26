class AsciiAgents < Formula
  desc "Terminal pixel-art office for AI coding agents"
  homepage "https://github.com/IvanWng97/ascii-agents"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/IvanWng97/ascii-agents/releases/download/v0.3.0/ascii-agents-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "e68bb7d646bb2449095daf039bbb6b545b99bfd854cff37988c3ac257491a036"
    end
    on_intel do
      url "https://github.com/IvanWng97/ascii-agents/releases/download/v0.3.0/ascii-agents-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "60a2bff121f2f41f61633fb25b46113ff8c01f50ae555f0f2f357e1e494e8fb8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IvanWng97/ascii-agents/releases/download/v0.3.0/ascii-agents-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7f0a362e51cb737316979b9a9dd1bfc26c05810390705dbbbdc27829a1a700bb"
    end
    on_intel do
      url "https://github.com/IvanWng97/ascii-agents/releases/download/v0.3.0/ascii-agents-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "94bd3e29fca47e4809f637b49dc1719804573c2955617a18523d8164d764d658"
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
