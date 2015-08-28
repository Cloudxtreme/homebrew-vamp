require "formula"

class Vamp < Formula
  homepage "http://vamp.io"
  version "0.7.10"
  url "https://bintray.com/artifact/download/magnetic-io/downloads/vamp-cli/vamp-cli-#{version}.zip"
  # generate the sha256 hash on your mac with the command: shasum -a 256 <filename>
  sha256 "52319025ecb9bfc51759cefdec847487686c0f4ae5dce2f7a001e6b65d6ff548"
  
  def install
      inreplace "brew/vamp", "##PREFIX##", "#{prefix}"
      prefix.install "lib/vamp-cli.jar"
      bin.install "brew/vamp"
  end
end
