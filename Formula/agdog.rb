class Agdog < Formula
  desc "Agent-aware terminal resource monitor: htop and nvitop fused"
  homepage "https://github.com/dynaum/agdog"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dynaum/agdog/releases/download/v0.1.3/agdog-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "a7411979d24f1856294720e8dc97de226286bfd0c53da552902c7d01eee5a612"
    end
    on_intel do
      url "https://github.com/dynaum/agdog/releases/download/v0.1.3/agdog-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "c8c259dba7c68f3f49d8ef18636dac040811fd45888c511cc9a6984f266c8284"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dynaum/agdog/releases/download/v0.1.3/agdog-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "87d1048d688f4e57d5042843d042a35568219307cfeaa692b471057a34618df5"
    end
  end

  def install
    bin.install "agdog"
  end

  test do
    assert_match "agdog", shell_output("#{bin}/agdog --version")
  end
end
