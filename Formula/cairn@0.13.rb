class CairnAT013 < Formula
  desc "Personal objective and task manager: a command line, an MCP server and a board"
  homepage "https://github.com/vonglasow/cairn"
  version "0.13.2"

  on_macos do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.13.2/cairn-v0.13.2-darwin-arm64.tar.gz"
      sha256 "5f6d2acf3271c2ee61762872a646bbcae67b6694d6e277bc553662d933e3dbd7"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.13.2/cairn-v0.13.2-darwin-amd64.tar.gz"
      sha256 "0ebcc979bb59305d1655874702e66cde0a07b4117a59ae71272c46f2494169d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.13.2/cairn-v0.13.2-linux-arm64.tar.gz"
      sha256 "3b199c3ae2074dad20c6b65a837ade5de986cd9b417789aa949f51c9a227618d"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.13.2/cairn-v0.13.2-linux-amd64.tar.gz"
      sha256 "c67c2787d1f6d874f310f0f35d1abfbd4940e77e4d45e66a9cc4afac830669ea"
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
    assert_match "0.13.2", shell_output("#{bin}/cairn --version")
  end
end
