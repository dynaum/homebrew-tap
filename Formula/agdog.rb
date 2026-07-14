class Agdog < Formula
  desc "Agent-aware terminal resource monitor: htop and nvitop fused"
  homepage "https://github.com/dynaum/agdog"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dynaum/agdog/releases/download/v0.1.1/agdog-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "bd3bba40cdc6f5a267772bb7f570b2e1b0aa0fb521d4518a13a25d23b6d68c35"
    end
    on_intel do
      url "https://github.com/dynaum/agdog/releases/download/v0.1.1/agdog-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "1283970b24fb52c886cf0daff932adc48ed6af61efd24bc85c454b75d78b8961"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dynaum/agdog/releases/download/v0.1.1/agdog-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b70a3119f0c03666e3f0f6696ff8ef7c07515ed270c041c59dda0a85a5694c4"
    end
  end

  def install
    bin.install "agdog"
  end

  test do
    assert_match "agdog", shell_output("#{bin}/agdog --version")
  end
end
