class Cairn < Formula
  desc "Personal objective and task manager: a command line, an MCP server and a board"
  homepage "https://github.com/vonglasow/cairn"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.6.0/cairn-v0.6.0-darwin-arm64.tar.gz"
      sha256 "bd91b19b8a22706676f3b8f9067d4efaaea910e446c930e7338f6e29eb4eb3c6"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.6.0/cairn-v0.6.0-darwin-amd64.tar.gz"
      sha256 "e1b1d211a7ace660a194e8d0f581868bd84a7f87cb47a3b74dedbbca7bf5d40c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.6.0/cairn-v0.6.0-linux-arm64.tar.gz"
      sha256 "ab3eec29e52a1bac8b6b51721ceeab64b7d3f48ea99646b24aadd3ddec1572bf"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.6.0/cairn-v0.6.0-linux-amd64.tar.gz"
      sha256 "3949a06f8c0726b41079ba34652bf744ca9a2bedcce30e0ce8e1c6d398fa4ae9"
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
    assert_match "0.6.0", shell_output("#{bin}/cairn --version")
  end
end
