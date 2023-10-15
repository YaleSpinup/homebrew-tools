# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Spinup < Formula
  desc "Simple command-line interface for spinup"
  homepage "https://github.com/YaleSpinup/spinup-cli"
  version "0.4.7"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/YaleSpinup/spinup-cli/releases/download/v0.4.7/spinup-cli_0.4.7_darwin_amd64.tar.gz"
      sha256 "36a52455edb464a1c6a5feb9226cfecc53d521b65fdcc9c7efba0b9c919a46e5"

      def install
        bin.install "spinup"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/YaleSpinup/spinup-cli/releases/download/v0.4.7/spinup-cli_0.4.7_darwin_arm64.tar.gz"
      sha256 "a559ee94482080d4bcd3a4edb90fc7958e501bb33a48bf1c82803ea5a5137fb8"

      def install
        bin.install "spinup"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/YaleSpinup/spinup-cli/releases/download/v0.4.7/spinup-cli_0.4.7_linux_amd64.tar.gz"
      sha256 "e37fdd8577c0be3d5d73c68c3b6f5dfbee3e0393829194e81c0d22bfe00868fe"

      def install
        bin.install "spinup"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/YaleSpinup/spinup-cli/releases/download/v0.4.7/spinup-cli_0.4.7_linux_arm64.tar.gz"
      sha256 "bb5ac962b7819bd272083bc5824e1dfcc50e23ce4c2e99065670d1d27de5f2bb"

      def install
        bin.install "spinup"
      end
    end
  end

  test do
    system "#{bin}/spinup", "version"
  end
end
