class Agdog < Formula
  desc "Agent-aware terminal resource monitor: htop and nvitop fused"
  homepage "https://github.com/dynaum/agdog"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dynaum/agdog/releases/download/v0.4.0/agdog-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "dd8f849a58b5bca3018103ee71552c12239eab7dd974f962787040ae3969deae"
    end
    on_intel do
      url "https://github.com/dynaum/agdog/releases/download/v0.4.0/agdog-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "e32415737ea40dca791b71ba3e0894d9b43dff366abf88b91615c58236073558"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dynaum/agdog/releases/download/v0.4.0/agdog-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "82c1c9193549189dd7b2c72cedac8c3ae172153dda65b756f1c40b6f5ac03b07"
    end
    on_arm do
      url "https://github.com/dynaum/agdog/releases/download/v0.4.0/agdog-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ed556b680bb87a49428855f25c066b26fde9f880111cd0308126da7dca835428"
    end
  end

  def install
    bin.install "agdog"
  end

  test do
    assert_match "agdog", shell_output("#{bin}/agdog --version")
  end
end
