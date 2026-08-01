class Kubeside < Formula
  desc "Kubernetes client scoped to the developer, not the cluster operator"
  homepage "https://kubeside.dynaum.com/"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dynaum/kubeside/releases/download/v1.1.0/kubeside_1.1.0_darwin_arm64.tar.gz"
      sha256 "e4c2de72017413b23eec9ab196df59b7dfdd081839e71213dc0636cf8adc05da"
    end
    on_intel do
      url "https://github.com/dynaum/kubeside/releases/download/v1.1.0/kubeside_1.1.0_darwin_amd64.tar.gz"
      sha256 "959ba9c0cb15443b957923e8dbaccfe75966babd7b766bf47d42a9fa02f74a8a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dynaum/kubeside/releases/download/v1.1.0/kubeside_1.1.0_linux_amd64.tar.gz"
      sha256 "8ba7d2df6e7bc190a03ad1fb9ea86dc609fcde6abac0fe0bb7ad722dbc79bbe5"
    end
    on_arm do
      url "https://github.com/dynaum/kubeside/releases/download/v1.1.0/kubeside_1.1.0_linux_arm64.tar.gz"
      sha256 "dba3bc3432a76efedb182e7612cef646f66a4c968113edbdf5e7c4708f2a1ef9"
    end
  end

  def install
    bin.install "kubeside"
  end

  test do
    system "#{bin}/kubeside", "--version"
  end
end
