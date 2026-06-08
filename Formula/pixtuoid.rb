class Pixtuoid < Formula
  desc "Terminal pixel-art office for AI coding agents"
  homepage "https://github.com/IvanWng97/pixtuoid"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.6.1/pixtuoid-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "232d22ba96d8ec51a55e0e0857cd0f7421ca5871b079dc68043c2cf54c8b67e1"
    end
    on_intel do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.6.1/pixtuoid-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "f2d8c04e8713a1226c3a05ccf86d74bcaf7c4b191b9f469996e635f6fd37c451"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.6.1/pixtuoid-v0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e882cd83ccbcd34712e1a229d33bc365e8075261fbd912c647728e766d7da5fc"
    end
    on_intel do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.6.1/pixtuoid-v0.6.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "95d3277420a6e2ea11b5ec8727d0b585966ef7d97179915bb652aa6921f25657"
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
