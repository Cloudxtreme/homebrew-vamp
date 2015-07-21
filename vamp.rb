require "formula"

class Vamp < Formula
  homepage "http://vamp.io"
  version "0.7.8-brew"
  url "https://bintray.com/artifact/download/magnetic-io/downloads/vamp-cli/vamp-cli-#{version}.zip"
  # generate the sha256 hash on your mac with the command: shasum -a 256 <filename>
  sha256 "da48f0416daba86cb77a051866c9960f1902a7707045981b5bc76591f449e7d1"
  
  def install
      inreplace "vamp-cli-#{version}/brew/vamp", "##PREFIX##", "#{prefix}"
      prefix.install "vamp-#{version}/lib/vamp-cli.jar"
      bin.install "vamp-cli-#{version}/brew/vamp"
  end
end
