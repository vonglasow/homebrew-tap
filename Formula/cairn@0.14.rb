class CairnAT014 < Formula
  desc "Personal objective and task manager: a command line, an MCP server and a board"
  homepage "https://github.com/vonglasow/cairn"
  version "0.14.0"

  on_macos do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.14.0/cairn-v0.14.0-darwin-arm64.tar.gz"
      sha256 "72c90c820756d2d58aa88a0e18156f0564268b4834249ad389d98fd0482fc15a"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.14.0/cairn-v0.14.0-darwin-amd64.tar.gz"
      sha256 "dec980397c1c605715993f7ccc1dfb130b9e7856ae0dbb9da9e9184a7d2df221"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.14.0/cairn-v0.14.0-linux-arm64.tar.gz"
      sha256 "625f8a605366d3464c6dae340579ecd47c6453e51b0ef56163556c3e2c4c2939"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.14.0/cairn-v0.14.0-linux-amd64.tar.gz"
      sha256 "8b128cd4aa36af18df438a69b0c28281da69e8c2e590e8e6accb52e2badf3a68"
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
    assert_match "0.14.0", shell_output("#{bin}/cairn --version")
  end
end
