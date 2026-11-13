class Cairn < Formula
  desc "Personal objective and task manager: a command line, an MCP server and a board"
  homepage "https://github.com/vonglasow/cairn"
  version "0.12.0"

  on_macos do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.12.0/cairn-v0.12.0-darwin-arm64.tar.gz"
      sha256 "0208d31782bbeafc65a5279d5d031b5ad0ec9706127caff8e100a9a1cb5ab04c"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.12.0/cairn-v0.12.0-darwin-amd64.tar.gz"
      sha256 "c90cf43a3694adb0fe7693a1e85bb385d9fae4c0f1b4b9e4ec62852e8a111361"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.12.0/cairn-v0.12.0-linux-arm64.tar.gz"
      sha256 "21c688bd44ec9a4749aec93ce9143f2f91abc888cae7245f5c0b3e1b76c06bbc"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.12.0/cairn-v0.12.0-linux-amd64.tar.gz"
      sha256 "64fa7227871cbc3fd248cdd8a1134b9e8cba95c64b45397816e4679f04ea1b36"
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
    assert_match "0.12.0", shell_output("#{bin}/cairn --version")
  end
end
