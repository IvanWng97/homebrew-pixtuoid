class Pixtuoid < Formula
  desc "Terminal pixel-art office for AI coding agents"
  homepage "https://github.com/IvanWng97/pixtuoid"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.9.0/pixtuoid-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "ac479edda6479f57a889c3d2f8e0c1ed7288faeb2802b0fe0e306f36a6a44aae"
    end
    on_intel do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.9.0/pixtuoid-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "770a3797818312bd3984b02605d81f966b0e8595356495787dcf9c251952d389"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.9.0/pixtuoid-v0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b278707f89df01ab738bf21c30bb0186733eb89eac2d3912cc63bc7e19f845f4"
    end
    on_intel do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.9.0/pixtuoid-v0.9.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cab1ccdd6273d6aec90abea100c8efb97c7b790fb3816df9b76b820963f714ac"
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
