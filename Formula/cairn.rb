class Cairn < Formula
  desc "Personal objective and task manager: a command line, an MCP server and a board"
  homepage "https://github.com/vonglasow/cairn"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.7.0/cairn-v0.7.0-darwin-arm64.tar.gz"
      sha256 "c7e1db8e8a8dcdf7354f3ceab85f0bb099137ecaf887e0b4e323f431e5152e04"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.7.0/cairn-v0.7.0-darwin-amd64.tar.gz"
      sha256 "8e64d95a31a5c6e68c97b5b9f68ce7a40a77f8782c39cb7499ff376710fef12a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.7.0/cairn-v0.7.0-linux-arm64.tar.gz"
      sha256 "0fe50d3b4d200229979e0d492dab4e1d25b758e941bbd3862fc87fd3346c7b7d"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.7.0/cairn-v0.7.0-linux-amd64.tar.gz"
      sha256 "66c680337d025e839eb533aff28a5005beb5804bfad8ab73b311a1e8cc09b841"
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
    assert_match "0.7.0", shell_output("#{bin}/cairn --version")
  end
end
