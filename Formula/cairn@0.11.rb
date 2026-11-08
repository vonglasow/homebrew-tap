class CairnAT011 < Formula
  desc "Personal objective and task manager: a command line, an MCP server and a board"
  homepage "https://github.com/vonglasow/cairn"
  version "0.11.0"

  on_macos do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.11.0/cairn-v0.11.0-darwin-arm64.tar.gz"
      sha256 "60063c9b860563ae9672e77b92b90fc1d0c983dc65152097734dc3735f583684"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.11.0/cairn-v0.11.0-darwin-amd64.tar.gz"
      sha256 "247d72967ce8c062764b23144fe731a568f81d2d57f78de27f32a7328fdf4528"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.11.0/cairn-v0.11.0-linux-arm64.tar.gz"
      sha256 "3a4e5f9f803d23d5c99ad2ce73911e9effc3e9106d44bceec09733ee8dedb230"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.11.0/cairn-v0.11.0-linux-amd64.tar.gz"
      sha256 "8a9fc29931e94d6b6e0f29adfd209e00992fe25ddf7ef6d1d67fdd9f6cbb0373"
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
    assert_match "0.11.0", shell_output("#{bin}/cairn --version")
  end
end
