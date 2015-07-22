require "formula"

class Vamp < Formula
  homepage "http://vamp.io"
  version "0.7.8.6"
  url "https://bintray.com/artifact/download/magnetic-io/downloads/vamp-cli/vamp-cli-#{version}.zip"
  # generate the sha256 hash on your mac with the command: shasum -a 256 <filename>
  sha256 "dde925c565fcb1147ae5a9200fcc2cab559ce2072fff6ca75f15f93d7d2c8772"
  
  def install
      inreplace "brew/vamp", "##PREFIX##", "#{prefix}"
      prefix.install "lib/vamp-cli.jar"
      bin.install "brew/vamp"
  end
end
