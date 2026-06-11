class Pixtuoid < Formula
  desc "Terminal pixel-art office for AI coding agents"
  homepage "https://github.com/IvanWng97/pixtuoid"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.7.0/pixtuoid-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "afad9be2dd0ba37f72bc356509b78d8648f40aa2aa836d80a5f6b77d2a38b080"
    end
    on_intel do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.7.0/pixtuoid-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "dc186db92d2e911415850a79a45268bddc376766af1b0bccb45fcb0d18b5acf2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.7.0/pixtuoid-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "79cc8b47e25cf9fc84e502f3b822ba1c30e72b3d1112a2f3bb1f5cc5135fb510"
    end
    on_intel do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.7.0/pixtuoid-v0.7.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2804d1d8bfcd24e1182ddc32e15941424ff11760b0156076eec51994ed255462"
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
