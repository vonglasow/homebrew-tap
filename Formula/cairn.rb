class Cairn < Formula
  desc "Personal objective and task manager: a command line, an MCP server and a board"
  homepage "https://github.com/vonglasow/cairn"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.5.0/cairn-v0.5.0-darwin-arm64.tar.gz"
      sha256 "fbe97674d959902821d0fa2d53d599d3ad887e1679212af048cc47cfc0d2b757"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.5.0/cairn-v0.5.0-darwin-amd64.tar.gz"
      sha256 "942b60a7d8435ace455411bb275d36dc776d0d6193643ffb99acccd6a4e477fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.5.0/cairn-v0.5.0-linux-arm64.tar.gz"
      sha256 "2f7dba2dfa2b86b130d95781253037fcb6f2fb6fb54aa5c440d45adaf6e8add0"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.5.0/cairn-v0.5.0-linux-amd64.tar.gz"
      sha256 "5ae61100d5e0ecb0bde7e23b4db7b5be85b3ae0e198b34208bb3526f0c0115a7"
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
    assert_match "0.5.0", shell_output("#{bin}/cairn --version")
  end
end
