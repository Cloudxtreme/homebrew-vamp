require "formula"

class Vamp < Formula
  homepage "http://vamp.io"
  url "https://bintray.com/artifact/download/magnetic-io/downloads/vamp-cli/vamp-cli-0.7.8-brew.zip"
  sha256 "cfd1620cb48247e891292d48424a20c5f59bac6a6651ddafba74b7dbe6cedd2f"

  def install
      inreplace "brew/bin/vamp", "##PREFIX##", "#{prefix}"
      prefix.install "vamp-cli-0.7.8-brew.zip"
      bin.install "brew/bin/vamp"
  end
end
