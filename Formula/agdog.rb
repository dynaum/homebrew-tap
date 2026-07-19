class Agdog < Formula
  desc "Agent-aware terminal resource monitor: htop and nvitop fused"
  homepage "https://github.com/dynaum/agdog"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dynaum/agdog/releases/download/v0.5.0/agdog-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "689d3c51f5b7b2a9e3af0452bd10760611ae6993c6e415a98b47254f84797e07"
    end
    on_intel do
      url "https://github.com/dynaum/agdog/releases/download/v0.5.0/agdog-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "fee1cb1f1dd104e954b0af5f4810d085a59874f889f387565d432f4f66513e87"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dynaum/agdog/releases/download/v0.5.0/agdog-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "63d02d21cf4e44ea20f2ae417f87ee1dae5d8bce5a9052b53ac241504e1bc17a"
    end
    on_arm do
      url "https://github.com/dynaum/agdog/releases/download/v0.5.0/agdog-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c75a07a0d965cd18c8cc13ce7dc17caf4a87c06960eca8e2564e4474ea658ec9"
    end
  end

  def install
    bin.install "agdog"
  end

  test do
    assert_match "agdog", shell_output("#{bin}/agdog --version")
  end
end
