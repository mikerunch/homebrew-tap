class Vfarm < Formula
  desc "vfarm is a simple lightweight tool to run HTML/JS/CSS apps as native executables."
  homepage "https://github.com/mikerunch/vfarm"

  version "1.0.2"

  if OS.mac?
    url "https://github.com/mikerunch/vfarm/releases/download/v1.0.2/vfarm-darwin"
    sha256 "795cef450f4946625654ac1b500e1d64ba7cd568533060838425327dae743a2c"
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/mikerunch/vfarm/releases/download/v1.0.2/vfarm-arm64"
      sha256 "692dbf4a5a5d7ff1cbd1f020117c4477956c44dd117597cb38e0fc5b363ba535"
    else
      url "https://github.com/mikerunch/vfarm/releases/download/v1.0.2/vfarm-amd64"
      sha256 "49b0496b756dbaf6aad068426414510e3a789ea82200d7765c5eb37c37350f3b"
    end
  end

  def install
    if OS.mac?
      bin.install "vfarm-darwin" => "vfarm"
    elsif OS.linux?
      if Hardware::CPU.arm?
        bin.install "vfarm-arm64" => "vfarm"
      else
        bin.install "vfarm-amd64" => "vfarm"
      end
    end
  end
end
