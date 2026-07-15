class Agdog < Formula
  desc "Agent-aware terminal resource monitor: htop and nvitop fused"
  homepage "https://github.com/dynaum/agdog"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dynaum/agdog/releases/download/v0.1.2/agdog-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "76c7bd14d624b270eef0203703107bd61a78111d208df209fb7ed9984a35d11a"
    end
    on_intel do
      url "https://github.com/dynaum/agdog/releases/download/v0.1.2/agdog-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "2aa78012145d1ea4a16ce802ba62b8d85253f01b4416feff08e05ad97a039be1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dynaum/agdog/releases/download/v0.1.2/agdog-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9c3310066cba67519be3ffc207db35bd41eaaf726579c25e23e548c91a863ccb"
    end
  end

  def install
    bin.install "agdog"
  end

  test do
    assert_match "agdog", shell_output("#{bin}/agdog --version")
  end
end
