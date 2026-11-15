class CairnAT013 < Formula
  desc "Personal objective and task manager: a command line, an MCP server and a board"
  homepage "https://github.com/vonglasow/cairn"
  version "0.13.0"

  on_macos do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.13.0/cairn-v0.13.0-darwin-arm64.tar.gz"
      sha256 "0a08655d7a50b216a9afb4ceffa07d6027003291fc6e10c8f16e1bf3583464be"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.13.0/cairn-v0.13.0-darwin-amd64.tar.gz"
      sha256 "c4a0299d8e7cdb44728f48872ab9b81b13c3233db23724c5a1a4b08624b1b214"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.13.0/cairn-v0.13.0-linux-arm64.tar.gz"
      sha256 "09d87e9fa99819125199d72f6212fb09bf8ce812607582eb500edb9a53437246"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.13.0/cairn-v0.13.0-linux-amd64.tar.gz"
      sha256 "6e396d12943601a0c04276cd87769b085f197d6970b305993a3daa0e4f1b5778"
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
    assert_match "0.13.0", shell_output("#{bin}/cairn --version")
  end
end
