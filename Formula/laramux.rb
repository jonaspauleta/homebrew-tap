# typed: false
# frozen_string_literal: true

class Laramux < Formula
  desc "TUI for managing Laravel development processes"
  homepage "https://github.com/jonaspauleta/laramux"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jonaspauleta/laramux/releases/download/v#{version}/laramux-macos-aarch64"
      sha256 "10fe6c548aff132bc3359c8b9feb425570b18a4e0c40401d18daea34d20f342f"

      def install
        bin.install "laramux-macos-aarch64" => "laramux"
      end
    end

    on_intel do
      url "https://github.com/jonaspauleta/laramux/releases/download/v#{version}/laramux-macos-x86_64"
      sha256 "7b75229d61bb8a33b55683380d2d403c601295fccb4521a9fbbae467b5d557d7"

      def install
        bin.install "laramux-macos-x86_64" => "laramux"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jonaspauleta/laramux/releases/download/v#{version}/laramux-linux-aarch64"
      sha256 "2c0d51439fc13a0d0574fdf33ed16ab831e6707d43ff5346c1aeb3e4de421f28"

      def install
        bin.install "laramux-linux-aarch64" => "laramux"
      end
    end

    on_intel do
      url "https://github.com/jonaspauleta/laramux/releases/download/v#{version}/laramux-linux-x86_64"
      sha256 "8e5e24c292fb4ac4642a55558649453dd3b6d6f598e4fd23c9ea3382ec965ec9"

      def install
        bin.install "laramux-linux-x86_64" => "laramux"
      end
    end
  end

  test do
    assert_match "laramux", shell_output("#{bin}/laramux --help 2>&1", 1)
  end
end
