class Agdog < Formula
  desc "Agent-aware terminal resource monitor: htop and nvitop fused"
  homepage "https://github.com/dynaum/agdog"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dynaum/agdog/releases/download/v0.2.0/agdog-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "df06338eb989ba8fb3e6c669bbb89dac437b654ec9f034eafa48daf7977ea940"
    end
    on_intel do
      url "https://github.com/dynaum/agdog/releases/download/v0.2.0/agdog-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "60ce5ed617c17c79ae93277d64be8979930c6837f41ac75fd7cefef5c7708a53"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dynaum/agdog/releases/download/v0.2.0/agdog-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e8d1a3667017099be6e9c6206f4cbefc66d30959553fe79ff8f5c74aa8103c81"
    end
  end

  def install
    bin.install "agdog"
  end

  test do
    assert_match "agdog", shell_output("#{bin}/agdog --version")
  end
end
