class Agdog < Formula
  desc "Agent-aware terminal resource monitor: htop and nvitop fused"
  homepage "https://github.com/dynaum/agdog"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dynaum/agdog/releases/download/v0.1.5/agdog-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "e7cbbd6ee38f703e5f40a833366a22d1235c8bc1e64c8c103cf5e4b8569b2817"
    end
    on_intel do
      url "https://github.com/dynaum/agdog/releases/download/v0.1.5/agdog-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "5aa1642471a1c1aedf58a6985d4e2af4df9ae9e854fb5bf9e293d1cfdffc4a4e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dynaum/agdog/releases/download/v0.1.5/agdog-v0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4305998d75db7a289075ce059501e930cbee547465bb83f058c6848d4d4c037c"
    end
  end

  def install
    bin.install "agdog"
  end

  test do
    assert_match "agdog", shell_output("#{bin}/agdog --version")
  end
end
