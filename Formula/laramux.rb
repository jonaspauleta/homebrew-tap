# typed: false
# frozen_string_literal: true

class Laramux < Formula
  desc "TUI for managing Laravel development processes"
  homepage "https://github.com/jonaspauleta/laramux"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jonaspauleta/laramux/releases/download/v#{version}/laramux-macos-aarch64"
      sha256 "a62072a71c1a82df83812469056b25cfddf9a84455b089f6a49cb8ddb1a245a0"

      def install
        bin.install "laramux-macos-aarch64" => "laramux"
      end
    end

    on_intel do
      url "https://github.com/jonaspauleta/laramux/releases/download/v#{version}/laramux-macos-x86_64"
      sha256 "5c027d81865806e96e7125d8bc40628349b441b553720f8cdc95d021d92e1565"

      def install
        bin.install "laramux-macos-x86_64" => "laramux"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jonaspauleta/laramux/releases/download/v#{version}/laramux-linux-aarch64"
      sha256 "ff67fa6a01927c1e85c4e0d496d2bf26493771b73c4f51f73bc0c7485a81bda2"

      def install
        bin.install "laramux-linux-aarch64" => "laramux"
      end
    end

    on_intel do
      url "https://github.com/jonaspauleta/laramux/releases/download/v#{version}/laramux-linux-x86_64"
      sha256 "12f6f34ab8372218479138c046e24ff611fd928865b71949dc5dea85c3d84a37"

      def install
        bin.install "laramux-linux-x86_64" => "laramux"
      end
    end
  end

  test do
    assert_match "laramux", shell_output("#{bin}/laramux --help 2>&1", 1)
  end
end
