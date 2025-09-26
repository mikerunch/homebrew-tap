class Vfarm < Formula
  desc "vfarm is a simple lightweight tool to run HTML/JS/CSS apps as native executables."
  homepage "https://github.com/mikerunch/vfarm"

  if OS.mac?
    url "https://github.com/mikerunch/vfarm/releases/download/v1.0.0/vfarm-macos"
    sha256 "6ec99d05f30962dcb91112cfff826f34f61fe298e7d335bf9d46576bbb9bd3fe"
  elsif OS.linux?
    url "https://github.com/mikerunch/vfarm/releases/download/v1.0.0/vfarm-linux"
    sha256 "LINUX_SHA256_HIER"
  end

  version "1.0.0"

  def install
    if OS.mac?
      bin.install "vfarm-macos" => "vfarm"
    elsif OS.linux?
      bin.install "vfarm-linux" => "vfarm"
    end
  end
end
