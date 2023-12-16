# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Spinup < Formula
  desc "Simple command-line interface for spinup"
  homepage "https://github.com/YaleSpinup/spinup-cli"
  version "0.4.9"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/YaleSpinup/spinup-cli/releases/download/v0.4.9/spinup-cli_0.4.9_darwin_arm64.tar.gz"
      sha256 "1d9ff1d50f854470a7e01e0b5be0a3cd52e8f6a6e7ecd5bfdddb04a881f97ccb"

      def install
        bin.install "spinup"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/YaleSpinup/spinup-cli/releases/download/v0.4.9/spinup-cli_0.4.9_darwin_amd64.tar.gz"
      sha256 "6bf3a0f26093ea1f67a46efb5b14dffacfc3219fd39b70f890454b0d02fcf3d0"

      def install
        bin.install "spinup"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/YaleSpinup/spinup-cli/releases/download/v0.4.9/spinup-cli_0.4.9_linux_arm64.tar.gz"
      sha256 "7fcc5ded0a621957f685113208530d2049eda74b1f1f07978858947d54a307a6"

      def install
        bin.install "spinup"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/YaleSpinup/spinup-cli/releases/download/v0.4.9/spinup-cli_0.4.9_linux_amd64.tar.gz"
      sha256 "eef9ed876d2e6ec60575d07d59d399042daa26b01468815d7edbbbd665e77cdf"

      def install
        bin.install "spinup"
      end
    end
  end

  test do
    system "#{bin}/spinup", "version"
  end
end
