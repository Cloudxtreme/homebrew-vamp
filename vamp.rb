require "formula"

class Vamp < Formula
  homepage "http://vamp.io"
  version "0.7.11"
  url "https://bintray.com/artifact/download/magnetic-io/downloads/vamp-cli/vamp-cli-#{version}.zip"
  # generate the sha256 hash on your mac with the command: shasum -a 256 <filename>
  sha256 "64ce24cbd65ceddd2917c23a702cbe45a3037ac77db7428494b3ee4db1ca9bdc"
  
  def install
      inreplace "brew/vamp", "##PREFIX##", "#{prefix}"
      prefix.install "lib/vamp-cli.jar"
      bin.install "brew/vamp"
  end
end
