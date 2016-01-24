require "formula"

class Vamp < Formula
  homepage "http://vamp.io"
  version "0.8.2"
  url "https://bintray.com/artifact/download/magnetic-io/downloads/vamp-cli/vamp-cli-#{version}.zip"
  # generate the sha256 hash on your mac with the command: shasum -a 256 <filename>
  sha256 "889970336e26cc5daf06c2cc919d8c876577c2e095d7de4060f03950749f6d40"
  
  def install
      inreplace "brew/vamp", "##PREFIX##", "#{prefix}"
      prefix.install "lib/vamp-cli.jar"
      bin.install "brew/vamp"
  end
end
