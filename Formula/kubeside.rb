class Kubeside < Formula
  desc "Kubernetes client scoped to the developer, not the cluster operator"
  homepage "https://kubeside.dynaum.com/"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dynaum/kubeside/releases/download/v1.0.0/kubeside_1.0.0_darwin_arm64.tar.gz"
      sha256 "e155d8a23bd6b25dffd02f2bdf6c08d3ea9d5f1b9ccc3866c094a31eb28716bb"
    end
    on_intel do
      url "https://github.com/dynaum/kubeside/releases/download/v1.0.0/kubeside_1.0.0_darwin_amd64.tar.gz"
      sha256 "799e519c795d0deaf02016b68c25b5aa777c522e36873a5dee5e7fe1823e325a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dynaum/kubeside/releases/download/v1.0.0/kubeside_1.0.0_linux_amd64.tar.gz"
      sha256 "17729e1c61eba76da85add66c14e9d16e98e98856ab3016e57cf4635e73a76d4"
    end
    on_arm do
      url "https://github.com/dynaum/kubeside/releases/download/v1.0.0/kubeside_1.0.0_linux_arm64.tar.gz"
      sha256 "a34d31a156e2291b0a5a8c40db397376ca1277f0a4dd3fb9eec609f41a903293"
    end
  end

  def install
    bin.install "kubeside"
  end

  test do
    system "#{bin}/kubeside", "--version"
  end
end
