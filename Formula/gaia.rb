# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gaia < Formula
  desc "Cli tool to ask local LLM with ollama"
  homepage "https://github.com/vonglasow/gaia"
  version "2.3.0"
  license "GPL3"

  on_macos do
    on_intel do
      url "https://github.com/vonglasow/gaia/releases/download/v2.3.0/gaia_2.3.0_darwin_amd64.tar.gz"
      sha256 "65e32ff6f4172946a33368c8852303833dc1696da0e3ae7002f74b136b376a10"

      def install
        bin.install "gaia"
      end
    end
    on_arm do
      url "https://github.com/vonglasow/gaia/releases/download/v2.3.0/gaia_2.3.0_darwin_arm64.tar.gz"
      sha256 "212820653cf4e535fd561588e65a4bff2cda1a112b9683e2983d9e9399f62dd3"

      def install
        bin.install "gaia"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vonglasow/gaia/releases/download/v2.3.0/gaia_2.3.0_linux_amd64.tar.gz"
        sha256 "aff137cb3f4084247bcd3896941d4087b1dc876b8f6d390723996fb9354a4537"

        def install
          bin.install "gaia"
        end
      end
    end
  end
end
