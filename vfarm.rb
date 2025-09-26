class Vfarm < Formula
  desc "vfarm is a simple lightweight tool to run HTML/JS/CSS apps as native executables."
  homepage "https://github.com/mikerunch/vfarm"
  url "https://github.com/mikerunch/vfarm/releases/download/v1.0.0/vfarm-macos"
  sha256 "6ec99d05f30962dcb91112cfff826f34f61fe298e7d335bf9d46576bbb9bd3fe"
  version "1.0.0"

  def install
    bin.install "vfarm-macos" => "vfarm"
  end
end
