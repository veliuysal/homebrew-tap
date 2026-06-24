class ArcDev < Formula
  desc "Command-line tools for Arc network development"
  homepage "https://github.com/veliuysal/arc-dev"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
            url "https://github.com/veliuysal/arc-dev/releases/download/v0.1.1/arc-dev-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "5c1bcdf9dc2e7ac3f5fa7a4200154efc680991759adb7b49c2026211c3e1344b"
    end
    on_intel do
            url "https://github.com/veliuysal/arc-dev/releases/download/v0.1.1/arc-dev-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "44759cbc890f13cd03a2febe292f9f7fd17ad076a363ab7d3027200a983d4b85"
    end
  end

  on_linux do
    on_arm do
            url "https://github.com/veliuysal/arc-dev/releases/download/v0.1.1/arc-dev-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3cdcc5a1d1d38ea24510d07a526a9aca3d57d90451498e3e0ddb0e087a5d4397"
    end
    on_intel do
            url "https://github.com/veliuysal/arc-dev/releases/download/v0.1.1/arc-dev-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "70550c6a1427261a6c7048c62552a2767d3e5ed142757dcbff6e9db3f1cd1a36"
    end
  end

  def install
    bin.install "arc-dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arc-dev --version")
  end
end
