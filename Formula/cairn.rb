class Cairn < Formula
  desc "Personal objective and task manager: a command line, an MCP server and a board"
  homepage "https://github.com/vonglasow/cairn"
  version "0.10.0"

  on_macos do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.10.0/cairn-v0.10.0-darwin-arm64.tar.gz"
      sha256 "a1d0bc7417b7b5bb22fbbb5928b72bee875075ba59cd2ec442afb5e7b590393e"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.10.0/cairn-v0.10.0-darwin-amd64.tar.gz"
      sha256 "0e4e5dbe4379cb2890c962d01442dddaf377752148dfe0fae1fec4b37955da3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.10.0/cairn-v0.10.0-linux-arm64.tar.gz"
      sha256 "66d5da8b6538eb86070831c35a7409db93e315ec09079d6c44e593481fb26278"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.10.0/cairn-v0.10.0-linux-amd64.tar.gz"
      sha256 "4303d1ed9f58402e429f705fe3cd932085b15ac59fcf85ac38567e0075dc0b49"
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
    assert_match "0.10.0", shell_output("#{bin}/cairn --version")
  end
end
