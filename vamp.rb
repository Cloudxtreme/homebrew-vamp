require "formula"

class Vamp < Formula
  homepage "http://vamp.io"
  version "0.7.11.1"
  url "https://bintray.com/artifact/download/magnetic-io/downloads/vamp-cli/vamp-cli-#{version}.zip"
  # generate the sha256 hash on your mac with the command: shasum -a 256 <filename>
  sha256 "908d834027d75dae31ba4f2353cfd87a4170cec4b953bfcb930e4ab729c50a6b"
  
  def install
      inreplace "brew/vamp", "##PREFIX##", "#{prefix}"
      prefix.install "lib/vamp-cli.jar"
      bin.install "brew/vamp"
  end
end
