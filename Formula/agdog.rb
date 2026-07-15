class Agdog < Formula
  desc "Agent-aware terminal resource monitor: htop and nvitop fused"
  homepage "https://github.com/dynaum/agdog"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dynaum/agdog/releases/download/v0.3.0/agdog-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "fb09cdc0556e4da4b11afbdb333f81b77ea61dd8c1cb540b61f456d08eecac63"
    end
    on_intel do
      url "https://github.com/dynaum/agdog/releases/download/v0.3.0/agdog-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "9a9e50fb2e0b95888e472f84beeab76fedeefb307cbd96fc6965a8f2d0e053f8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dynaum/agdog/releases/download/v0.3.0/agdog-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3c1bb6ca862953091853590fb2a303e2e7affc79f690d966eb9fed6c96e42a78"
    end
  end

  def install
    bin.install "agdog"
  end

  test do
    assert_match "agdog", shell_output("#{bin}/agdog --version")
  end
end
