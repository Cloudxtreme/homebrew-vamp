require "formula"

class Vamp < Formula
  homepage "http://vamp.io"
  url "https://bintray.com/artifact/download/magnetic-io/downloads/vamp-cli/vamp-cli-0.7.8-brew.zip"
  sha256 "da48f0416daba86cb77a051866c9960f1902a7707045981b5bc76591f449e7d1"

  def install
      inreplace "vamp-cli-0.7.8-brew/brew/vamp", "##PREFIX##", "#{prefix}"
      prefix.install "vamp-cli-0.7.8-brew/lib/vamp-cli.jar"
      bin.install "vamp-cli-0.7.8-brew/brew/vamp"
  end
end
