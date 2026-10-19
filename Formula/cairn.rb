class Cairn < Formula
  desc "Personal objective and task manager: a command line, an MCP server and a board"
  homepage "https://github.com/vonglasow/cairn"
  version "0.5.1"

  on_macos do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.5.1/cairn-v0.5.1-darwin-arm64.tar.gz"
      sha256 "e7d85443c5aeabea2bbbe7d4846dbc2564aacc8488eebe5258341f4af8604218"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.5.1/cairn-v0.5.1-darwin-amd64.tar.gz"
      sha256 "46ba4232b06ff8e1b5c0f34a691dc195c8cfb47de5cec282bc33ccb82c53e701"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.5.1/cairn-v0.5.1-linux-arm64.tar.gz"
      sha256 "28b844a6b81adf1cbc113c8b716d5bb907b599a775736c7c226ef0ea5fe6d93e"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.5.1/cairn-v0.5.1-linux-amd64.tar.gz"
      sha256 "a305a693df1bdfc9b5929cab6f03253b4c4a5f15ae7ca75171213d1a1a469782"
    end
  end

  def install
    bin.install "cairn"
  end

  def caveats
    <<~EOS
      cairn carries its Claude Code plugin. To use it, once:
        cairn plugin write
      then add the folder it names in Claude Code, as it says. cairn keeps
      that plugin at its own version from then on: after an upgrade, the
      next Claude Code session brings it up to date.
    EOS
  end

  test do
    assert_match "0.5.1", shell_output("#{bin}/cairn --version")
  end
end
