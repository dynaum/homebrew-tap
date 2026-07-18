#!/usr/bin/env bash
# Regenerate Formula/agdog.rb for a given agdog version from its GitHub release.
# Usage: ./update-formula.sh 0.1.5
set -euo pipefail

V="${1:?usage: ./update-formula.sh <version, e.g. 0.1.5>}"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

gh release download "v$V" --repo dynaum/agdog --dir "$TMP" --pattern SHA256SUMS
sha() { grep "$1" "$TMP/SHA256SUMS" | awk '{print $1}'; }

ARM=$(sha "aarch64-apple-darwin")
INTEL=$(sha "x86_64-apple-darwin")
LINUX=$(sha "x86_64-unknown-linux-gnu")
LINUX_ARM=$(sha "aarch64-unknown-linux-gnu")
base="https://github.com/dynaum/agdog/releases/download/v${V}"

cat > Formula/agdog.rb <<EOF
class Agdog < Formula
  desc "Agent-aware terminal resource monitor: htop and nvitop fused"
  homepage "https://github.com/dynaum/agdog"
  version "${V}"
  license "MIT"

  on_macos do
    on_arm do
      url "${base}/agdog-v${V}-aarch64-apple-darwin.tar.gz"
      sha256 "${ARM}"
    end
    on_intel do
      url "${base}/agdog-v${V}-x86_64-apple-darwin.tar.gz"
      sha256 "${INTEL}"
    end
  end

  on_linux do
    on_intel do
      url "${base}/agdog-v${V}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "${LINUX}"
    end
    on_arm do
      url "${base}/agdog-v${V}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "${LINUX_ARM}"
    end
  end

  def install
    bin.install "agdog"
  end

  test do
    assert_match "agdog", shell_output("#{bin}/agdog --version")
  end
end
EOF

echo "Formula/agdog.rb updated to ${V}"
