require "formula"

class Vamp < Formula
  homepage "http://vamp.io"
  version "0.7.8.5"
  url "https://bintray.com/artifact/download/magnetic-io/downloads/vamp-cli/vamp-cli-#{version}.zip"
  # generate the sha256 hash on your mac with the command: shasum -a 256 <filename>
  sha256 "ca3db28eab93fe92d012265e224573054960a705cd5371ddc1a15266b9b0fa86"
  
  def install
      inreplace "brew/vamp", "##PREFIX##", "#{prefix}"
      prefix.install "lib/vamp-cli.jar"
      bin.install "brew/vamp"
  end
end
