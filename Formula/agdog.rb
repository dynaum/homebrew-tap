class Agdog < Formula
  desc "Agent-aware terminal resource monitor: htop and nvitop fused"
  homepage "https://github.com/dynaum/agdog"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dynaum/agdog/releases/download/v0.1.4/agdog-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "171643e0fe09fd67ca6544f791a17a20a953c18e3866a66ba414cd720629776d"
    end
    on_intel do
      url "https://github.com/dynaum/agdog/releases/download/v0.1.4/agdog-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "40709a1964bb1960bb6924b2c4edfffc26ac34ff3993f8eb6b900e42aee922a2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dynaum/agdog/releases/download/v0.1.4/agdog-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf0d5c7f1477f8603774a9d5dcfeccb0a263922ec2a739add12faed5af0d02ed"
    end
  end

  def install
    bin.install "agdog"
  end

  test do
    assert_match "agdog", shell_output("#{bin}/agdog --version")
  end
end
