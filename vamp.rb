require "formula"

class Vamp < Formula
  homepage "http://vamp.io"
  version "0.7.9"
  url "https://bintray.com/artifact/download/magnetic-io/downloads/vamp-cli/vamp-cli-#{version}.zip"
  # generate the sha256 hash on your mac with the command: shasum -a 256 <filename>
  sha256 "c6385ceff1200c1f990bf133f5189270eca4a174ceedacb4a8e9915eda3b02ca"
  
  def install
      inreplace "brew/vamp", "##PREFIX##", "#{prefix}"
      prefix.install "lib/vamp-cli.jar"
      bin.install "brew/vamp"
  end
end
