class Kubeside < Formula
  desc "Kubernetes client scoped to the developer, not the cluster operator"
  homepage "https://kubeside.dynaum.com/"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dynaum/kubeside/releases/download/v1.0.1/kubeside_1.0.1_darwin_arm64.tar.gz"
      sha256 "54698a11d666429c206e54439526b582f9a1082182f4fa324fa9569694c9591e"
    end
    on_intel do
      url "https://github.com/dynaum/kubeside/releases/download/v1.0.1/kubeside_1.0.1_darwin_amd64.tar.gz"
      sha256 "3b723e8303ad92bceba54733279a315ee57f9e30f4a82ace6404ec9d344fcbd9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dynaum/kubeside/releases/download/v1.0.1/kubeside_1.0.1_linux_amd64.tar.gz"
      sha256 "a35d520543473d60ce33866b7642c0dee8bf725f99ccc1210584c9e85949e127"
    end
    on_arm do
      url "https://github.com/dynaum/kubeside/releases/download/v1.0.1/kubeside_1.0.1_linux_arm64.tar.gz"
      sha256 "84c9ba9e07e0a63d8a7cedeca2d6e772dce5cc64f23031a8fcb4ddf2a804097a"
    end
  end

  def install
    bin.install "kubeside"
  end

  test do
    system "#{bin}/kubeside", "--version"
  end
end
