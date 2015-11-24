require "formula"

class Vamp < Formula
  homepage "http://vamp.io"
  version "0.8.0"
  url "https://bintray.com/artifact/download/magnetic-io/downloads/vamp-cli/vamp-cli-#{version}.zip"
  # generate the sha256 hash on your mac with the command: shasum -a 256 <filename>
  sha256 "6d4c7c0dda6809bf15d50b2e81ba5eea8b5c53e6d7e69f44fac9e519566b9a7f"
  
  def install
      inreplace "brew/vamp", "##PREFIX##", "#{prefix}"
      prefix.install "lib/vamp-cli.jar"
      bin.install "brew/vamp"
  end
end
