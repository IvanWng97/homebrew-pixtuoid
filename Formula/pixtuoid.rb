class Pixtuoid < Formula
  desc "Terminal pixel-art office for AI coding agents"
  homepage "https://github.com/IvanWng97/pixtuoid"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.11.0/pixtuoid-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "f567e711fa7f8cab4b3bf2da868daa4f5b0023d0855400107c566aad71130702"
    end
    on_intel do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.11.0/pixtuoid-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "8fbcc1c2ed6546c483425ef91d2d7563c275937e11877606d7a2332161bb2cd4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.11.0/pixtuoid-v0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "07a833d052e5b0f322cbe0f8e57b14e73dfdb1a3e067466e5ef4274b4e2e061e"
    end
    on_intel do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.11.0/pixtuoid-v0.11.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "748c180efb5226b92396deee2a38804c7eb4bf627a22c17a7d7c16139c0785e3"
    end
  end

  def install
    bin.install "pixtuoid"
    bin.install "pixtuoid-hook"
  end

  def caveats
    <<~EOS
      To start visualizing your AI coding sessions:
        pixtuoid

      Then press `s` to open the Sources panel and connect your
      CLI (Claude Code, Codex, ...). Disconnect there before
      uninstalling to remove its hooks.
    EOS
  end

  test do
    assert_match "pixtuoid", shell_output("#{bin}/pixtuoid --version")
  end
end
