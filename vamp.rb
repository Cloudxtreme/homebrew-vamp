require "formula"

class Vamp < Formula
  homepage "http://vamp.io"
  version "0.8.3"
  url "https://bintray.com/artifact/download/magnetic-io/downloads/vamp-cli/vamp-cli-#{version}.zip"
  # generate the sha256 hash on your mac with the command: shasum -a 256 <filename>
  sha256 "59f5fd9593cf1b7f11e08a876b0cc1bad625fa08b36bb2f4a03a9c8a1c712810"
  
  def install
      inreplace "brew/vamp", "##PREFIX##", "#{prefix}"
      prefix.install "lib/vamp-cli.jar"
      bin.install "brew/vamp"
  end
end
