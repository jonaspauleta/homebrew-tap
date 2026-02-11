# typed: false
# frozen_string_literal: true

class Laramux < Formula
  desc "TUI for managing Laravel development processes"
  homepage "https://github.com/jonaspauleta/laramux"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jonaspauleta/laramux/releases/download/v#{version}/laramux-macos-aarch64"
      sha256 "aed132e433008e3f17f34009591cdcc2e926da1b514e488d921e4d81bca2ccac"

      def install
        bin.install "laramux-macos-aarch64" => "laramux"
      end
    end

    on_intel do
      url "https://github.com/jonaspauleta/laramux/releases/download/v#{version}/laramux-macos-x86_64"
      sha256 "1864337ece20afb83fdd74aad4dcc67e9d3389c0d1ff94da8d28a2eba31860d7"

      def install
        bin.install "laramux-macos-x86_64" => "laramux"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jonaspauleta/laramux/releases/download/v#{version}/laramux-linux-aarch64"
      sha256 "e9f5b04eaed4ac82ae86e82d3c0b8f4ef8cae9a12c44ef67dfa93db45e54fe60"

      def install
        bin.install "laramux-linux-aarch64" => "laramux"
      end
    end

    on_intel do
      url "https://github.com/jonaspauleta/laramux/releases/download/v#{version}/laramux-linux-x86_64"
      sha256 "cc6bbf806d1e77b62c7736fbb47bfc76e70b26dd836b55c9483ca276bd71dd29"

      def install
        bin.install "laramux-linux-x86_64" => "laramux"
      end
    end
  end

  test do
    assert_match "laramux", shell_output("#{bin}/laramux --help 2>&1", 1)
  end
end
