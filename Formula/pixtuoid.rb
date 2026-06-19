class Pixtuoid < Formula
  desc "Terminal pixel-art office for AI coding agents"
  homepage "https://github.com/IvanWng97/pixtuoid"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.11.1/pixtuoid-v0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "431f0441ee0bd6595dfe121849033ce1ac69da9acd3cf18599e865c563d46f8d"
    end
    on_intel do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.11.1/pixtuoid-v0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "c4ca73d8f823333b092a8dd99073203142fde4908c44601685b9c393d1606fbf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.11.1/pixtuoid-v0.11.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7816f8f7a4792e0ac850f5c5bf2f67b522d9364bd232ced5730d08674f1624a0"
    end
    on_intel do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.11.1/pixtuoid-v0.11.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "41bf81281faa98901d55c73ff5a9dae500307c7509e78249b7712f8abd87c9ba"
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
