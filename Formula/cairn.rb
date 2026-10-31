class Cairn < Formula
  desc "Personal objective and task manager: a command line, an MCP server and a board"
  homepage "https://github.com/vonglasow/cairn"
  version "0.9.0"

  on_macos do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.9.0/cairn-v0.9.0-darwin-arm64.tar.gz"
      sha256 "76afefaf4d044bb3b5c763014a37c7dec47438f610211cf4b117b083dc315450"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.9.0/cairn-v0.9.0-darwin-amd64.tar.gz"
      sha256 "9964949303039446a79b6359ce0f0d87119d41897fb41313263bd1ce472773b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.9.0/cairn-v0.9.0-linux-arm64.tar.gz"
      sha256 "08594f31bf93344fdf81d66ee3e19378ec63ec5b8f51291761939e6c65084642"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.9.0/cairn-v0.9.0-linux-amd64.tar.gz"
      sha256 "e41357bcce418433307ca3a52cfd14fada1ad95778200162491322e751da0064"
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
    assert_match "0.9.0", shell_output("#{bin}/cairn --version")
  end
end
