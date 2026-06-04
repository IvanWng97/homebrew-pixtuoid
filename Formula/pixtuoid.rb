class Pixtuoid < Formula
  desc "Terminal pixel-art office for AI coding agents"
  homepage "https://github.com/IvanWng97/pixtuoid"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.5.0/pixtuoid-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "1d4f814bf895392e7547465ea54dde15b4a4baa694624d6129821dbf11aaab39"
    end
    on_intel do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.5.0/pixtuoid-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "0ded13d909612c652860263766f8f890f56c3b7e9d7abd342b738ece2ed0004f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.5.0/pixtuoid-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "718263c13f25836850e69edfca0029c759fe0acfe7ebf37e42c418385ce45da0"
    end
    on_intel do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.5.0/pixtuoid-v0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "17156e44aebf8eed3dcf59cd9f856e41d432338a5bfbb564bba6be31c5d93ddb"
    end
  end

  def install
    bin.install "pixtuoid"
    bin.install "pixtuoid-hook"
  end

  def caveats
    <<~EOS
      To start visualizing your Claude Code sessions:
        pixtuoid install-hooks
        pixtuoid run

      Before uninstalling, remove hooks from Claude Code:
        pixtuoid uninstall-hooks
    EOS
  end

  test do
    assert_match "pixtuoid", shell_output("#{bin}/pixtuoid --version")
  end
end
