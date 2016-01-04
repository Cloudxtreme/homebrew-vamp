require "formula"

class Vamp < Formula
  homepage "http://vamp.io"
  version "0.8.1"
  url "https://bintray.com/artifact/download/magnetic-io/downloads/vamp-cli/vamp-cli-#{version}.zip"
  # generate the sha256 hash on your mac with the command: shasum -a 256 <filename>
  sha256 "c11e8196cff9b59ea341d9ee85c08ce5e6d364a86e6c408c4192844259b6ea56"
  
  def install
      inreplace "brew/vamp", "##PREFIX##", "#{prefix}"
      prefix.install "lib/vamp-cli.jar"
      bin.install "brew/vamp"
  end
end
