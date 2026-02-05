# typed: false
# frozen_string_literal: true

class Laramux < Formula
  desc "TUI for managing Laravel development processes"
  homepage "https://github.com/jonaspauleta/laramux"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jonaspauleta/laramux/releases/download/v#{version}/laramux-macos-aarch64"
      sha256 "e5dc65643a4bda3e3ab0f48e4b7e78b16789e93a94080122f1fc0bbbed53cfee"

      def install
        bin.install "laramux-macos-aarch64" => "laramux"
      end
    end

    on_intel do
      url "https://github.com/jonaspauleta/laramux/releases/download/v#{version}/laramux-macos-x86_64"
      sha256 "eef1b72eb7e68fb023b3cf88596c6af8111e43e0f3bf357ac068514495e69fca"

      def install
        bin.install "laramux-macos-x86_64" => "laramux"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jonaspauleta/laramux/releases/download/v#{version}/laramux-linux-aarch64"
      sha256 "c5f8f175cd5b0f9628ec3031a13b247604fe82ec88cf7e7f5c2375aba4da9f7c"

      def install
        bin.install "laramux-linux-aarch64" => "laramux"
      end
    end

    on_intel do
      url "https://github.com/jonaspauleta/laramux/releases/download/v#{version}/laramux-linux-x86_64"
      sha256 "4e6b43b587721ee34bbbd8619df53da7db1b9005e2b90bb94e9c0e1e5e0f6985"

      def install
        bin.install "laramux-linux-x86_64" => "laramux"
      end
    end
  end

  test do
    assert_match "laramux", shell_output("#{bin}/laramux --help 2>&1", 1)
  end
end
