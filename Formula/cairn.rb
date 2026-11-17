class Cairn < Formula
  desc "Personal objective and task manager: a command line, an MCP server and a board"
  homepage "https://github.com/vonglasow/cairn"
  version "0.13.1"

  on_macos do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.13.1/cairn-v0.13.1-darwin-arm64.tar.gz"
      sha256 "cd4dcc08a19c734c1df1eed46412d3cdc8693f3ccc3edb439b874ed8f1ca8e07"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.13.1/cairn-v0.13.1-darwin-amd64.tar.gz"
      sha256 "1eec922c4e8a93e1911bd540bd4031ca2951b81cb565b452231f3edf0188b75b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.13.1/cairn-v0.13.1-linux-arm64.tar.gz"
      sha256 "120e0c24b3dcb283e5fd3077c5bc2f9221cdf57c90971639f54a8a30b419cc18"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.13.1/cairn-v0.13.1-linux-amd64.tar.gz"
      sha256 "199195039bb20d97413f100bb23387ead16e383192eb095ad8febaa36aeafffe"
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
    assert_match "0.13.1", shell_output("#{bin}/cairn --version")
  end
end
