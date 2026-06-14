class Pixtuoid < Formula
  desc "Terminal pixel-art office for AI coding agents"
  homepage "https://github.com/IvanWng97/pixtuoid"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.8.0/pixtuoid-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "4c9e2b5b5652cf39bbac6a5486abb79900654175a06c552318e185ec20adcf64"
    end
    on_intel do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.8.0/pixtuoid-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "434bb1ad5a4e6c92510de184ac5d8ce188c251846280a5af7820e183741d6817"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.8.0/pixtuoid-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6738a33d5bcb7b279dc90eb8e731c042896eaf6e2683aad03996ac166cf5f4c6"
    end
    on_intel do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.8.0/pixtuoid-v0.8.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1cf25bc131e4b50049a6a0fc48c66f68189ae335183779c867bcac5873953667"
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

      Then press  to open the Connection panel and connect your
      CLI (Claude Code, Codex, ...). Disconnect there before
      uninstalling to remove its hooks.
    EOS
  end

  test do
    assert_match "pixtuoid", shell_output("#{bin}/pixtuoid --version")
  end
end
