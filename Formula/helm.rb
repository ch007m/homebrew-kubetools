class Helm < Formula
  desc "A CLI for building apps using Cloud Native Buildpacks"
  homepage "https://github.com/buildpacks/pack"
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/buildpacks/pack/releases/download/v0.18.0/pack-v0.18.0-macos-arm64.tgz"
    sha256 "392b370f9ec0f674b11185c3ae4ffdf27d2d02da6159bf1af654005da44d76e0"
  elsif OS.mac?
    url "https://github.com/buildpacks/pack/releases/download/v0.18.0/pack-v0.18.0-macos.tgz"
    sha256 "d01052d113633d8c4bf78a87fc7b40e98a456c28ad14e1bf3a76c803baab8d8d"
  else 
    url "https://github.com/buildpacks/pack/releases/download/v0.18.0/pack-v0.18.0-linux.tgz"
    sha256 "b50e3c16b926c4c3266605427de669b5f6085f1ce65e3e58bf591e0696af66df"
  end

  bottle :unneeded

  def install
    bin.install "pack"
  end
end
