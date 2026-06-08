class Pixtuoid < Formula
  desc "Terminal pixel-art office for AI coding agents"
  homepage "https://github.com/IvanWng97/pixtuoid"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.6.0/pixtuoid-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "98b3ab8c42adc148b92328ed736bcb064d387688499acd06d4f8e54ab0ab84cf"
    end
    on_intel do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.6.0/pixtuoid-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "bd795801c29e03c686339a343c3397e0835339273a5cf3e6e7adb87ab4c90306"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.6.0/pixtuoid-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3dfd6f5ef2d15ee06a6343f272e0e481526ac31d4e40ec2feeaa65e234c6ed7a"
    end
    on_intel do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.6.0/pixtuoid-v0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "805d668ea993354712a74c69716c972387c305febde2a65c62f64513c376be4c"
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
