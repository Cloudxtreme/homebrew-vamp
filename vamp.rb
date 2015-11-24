require "formula"

class Vamp < Formula
  homepage "http://vamp.io"
  version "0.8.0"
  url "https://bintray.com/artifact/download/magnetic-io/downloads/vamp-cli/vamp-cli-#{version}.zip"
  # generate the sha256 hash on your mac with the command: shasum -a 256 <filename>
  sha256 "730e3e2dbeaf8dc8555ed01fc5c876d4399075de9b25e9d5f4e8ca8367243455"
  
  def install
      inreplace "brew/vamp", "##PREFIX##", "#{prefix}"
      prefix.install "lib/vamp-cli.jar"
      bin.install "brew/vamp"
  end
end
