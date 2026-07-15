class Agdog < Formula
  desc "Agent-aware terminal resource monitor: htop and nvitop fused"
  homepage "https://github.com/dynaum/agdog"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dynaum/agdog/releases/download/v0.3.1/agdog-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "39475063578bffdc6e47ad20817dcd8f7946420cf871d5161a697c265cc01f00"
    end
    on_intel do
      url "https://github.com/dynaum/agdog/releases/download/v0.3.1/agdog-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "c3836c30da6f1e5c01b53ced55c2fb05c8726e1e4b323033e1cf9ca6ba21b400"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dynaum/agdog/releases/download/v0.3.1/agdog-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "619669cbd9a8bc2a5653c9ce8c6bfc7551935703e2b8718c858a7894ed189797"
    end
  end

  def install
    bin.install "agdog"
  end

  test do
    assert_match "agdog", shell_output("#{bin}/agdog --version")
  end
end
