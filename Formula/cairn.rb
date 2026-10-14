class Cairn < Formula
  desc "Personal objective and task manager: a command line, an MCP server and a board"
  homepage "https://github.com/vonglasow/cairn"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.4.0/cairn-v0.4.0-darwin-arm64.tar.gz"
      sha256 "19143110250d5f271e1ef57b62ccb1c6c507c6642bd8d561aca1560d8001c890"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.4.0/cairn-v0.4.0-darwin-amd64.tar.gz"
      sha256 "37d803681d55ddf0be545b35dc6cee12a21a5cd15df85c49be82d3157fbdb242"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vonglasow/cairn/releases/download/v0.4.0/cairn-v0.4.0-linux-arm64.tar.gz"
      sha256 "bce85577be055383162be145d9387fe1c8be63b6a00ea3e7f8d0b25c73865180"
    end
    on_intel do
      url "https://github.com/vonglasow/cairn/releases/download/v0.4.0/cairn-v0.4.0-linux-amd64.tar.gz"
      sha256 "6f43fb492809c256854932e9ffd62296b2af746efdca178bc64c5e33e2eaf5ce"
    end
  end

  def install
    bin.install "cairn"
  end

  test do
    assert_match "0.4.0", shell_output("#{bin}/cairn --version")
  end
end
