class Vfarm < Formula
  desc "vfarm is a simple lightweight tool to run HTML/JS/CSS apps as native executables."
  homepage "https://github.com/mikerunch/vfarm"

  if OS.mac?
    url "https://github.com/mikerunch/vfarm/releases/download/v1.0.1/vfarm-macos"
    sha256 "c84f9b207a9c1394761125992efe992171476daa201d71812189f3096ffc807c"
  elsif OS.linux?
    url "https://github.com/mikerunch/vfarm/releases/download/v1.0.1/vfarm-linux"
    sha256 "LINUX_SHA256_HIER"
  end

  version "1.0.1"

  def install
    if OS.mac?
      bin.install "vfarm-macos" => "vfarm"
    elsif OS.linux?
      bin.install "vfarm-linux" => "vfarm"
    end
  end
end
