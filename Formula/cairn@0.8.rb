class CairnAT08 < Formula
  desc "Personal objective and task manager: a command line, an MCP server and a board"
  homepage "https://github.com/vonglasow/cairn"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.8.0/cairn-v0.8.0-darwin-arm64.tar.gz"
      sha256 "d79c9e1c59bf0748f01f224c3131bc584d9855699ee7037eacb64fdb5ea5034a"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.8.0/cairn-v0.8.0-darwin-amd64.tar.gz"
      sha256 "6a52d333df7bda4b07a65fc9091b34736aeaef4db09cae4b6818e5d0aee46e78"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.8.0/cairn-v0.8.0-linux-arm64.tar.gz"
      sha256 "883d4facafc2802d96f53c273434a1f25765176455e43480b2accc356e29e967"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.8.0/cairn-v0.8.0-linux-amd64.tar.gz"
      sha256 "25ad6cefa886a0adde927e52aa3cf940fc03901406eac32a8d7708e4c7e406e4"
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
    assert_match "0.8.0", shell_output("#{bin}/cairn --version")
  end
end
