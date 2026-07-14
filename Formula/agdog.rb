class Agdog < Formula
  desc "Agent-aware terminal resource monitor: htop and nvitop fused"
  homepage "https://github.com/dynaum/agdog"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dynaum/agdog/releases/download/v0.1.0/agdog-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "2f0ac114fd3eb4d8804f33169de17ba76bec78938846c8ca058227b825715edd"
    end
    on_intel do
      url "https://github.com/dynaum/agdog/releases/download/v0.1.0/agdog-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "2674f25d1b7eb0aa121e9af9af2502dc0e714e03427349d115f987e1dfbaa63c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dynaum/agdog/releases/download/v0.1.0/agdog-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ad44920622008b61f65997a97620dbfdba666c119c586647c9b983e945f6785"
    end
  end

  def install
    bin.install "agdog"
  end

  test do
    assert_match "agdog", shell_output("#{bin}/agdog --version")
  end
end
