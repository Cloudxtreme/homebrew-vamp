require "formula"

class Vamp < Formula
  homepage "http://vamp.io"
  version "0.7.8.3"
  url "https://bintray.com/artifact/download/magnetic-io/downloads/vamp-cli/vamp-cli-#{version}.zip"
  # generate the sha256 hash on your mac with the command: shasum -a 256 <filename>
  sha256 "e7a4d0f7b76511aac9d1748aaba3c281be548a18036829cb32b79c9e333c97c1"
  
  def install
      inreplace "brew/vamp", "##PREFIX##", "#{prefix}"
      prefix.install "lib/vamp-cli.jar"
      bin.install "brew/vamp"
  end
end
