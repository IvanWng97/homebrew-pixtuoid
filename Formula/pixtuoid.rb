class Pixtuoid < Formula
  desc "Terminal pixel-art office for AI coding agents"
  homepage "https://github.com/IvanWng97/pixtuoid"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.10.0/pixtuoid-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "d45f4f40b124b2b79ece6994bbb1a02660e538fa66f9f0a5d6a9aae0ccad288f"
    end
    on_intel do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.10.0/pixtuoid-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "6155f1255e58f9faf79ab8b55efd1efd08dbadafef2a7aa5b0b36e0fe3305f0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.10.0/pixtuoid-v0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "83412181bee6591e4cba8bed11cd2360a30d3fe6fe11ac58d09367920ac1576a"
    end
    on_intel do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.10.0/pixtuoid-v0.10.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "35712e10da1b6f654e6283aea82fcb50f4d78bf34377ea50c50894a4e234a1fd"
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

      Then press  to open the Sources panel and connect your
      CLI (Claude Code, Codex, ...). Disconnect there before
      uninstalling to remove its hooks.
    EOS
  end

  test do
    assert_match "pixtuoid", shell_output("#{bin}/pixtuoid --version")
  end
end
