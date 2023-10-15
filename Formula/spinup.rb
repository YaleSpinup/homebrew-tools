# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Spinup < Formula
  desc "Simple command-line interface for spinup"
  homepage "https://github.com/YaleSpinup/spinup-cli"
  version "0.4.6-pre3"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/YaleSpinup/spinup-cli/releases/download/v0.4.6-pre3/spinup-cli_0.4.6-pre3_darwin_amd64.tar.gz"
      sha256 "e4c3215806ee5d89018d5c2974a3cefea9ae6c8cac7f4d743d998099037fa9a0"

      def install
        bin.install "spinup"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/YaleSpinup/spinup-cli/releases/download/v0.4.6-pre3/spinup-cli_0.4.6-pre3_darwin_arm64.tar.gz"
      sha256 "dff9c4ae0799c5454983af92456e7dfea1019012a8a491fb0bf146aa5ae30682"

      def install
        bin.install "spinup"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/YaleSpinup/spinup-cli/releases/download/v0.4.6-pre3/spinup-cli_0.4.6-pre3_linux_arm64.tar.gz"
      sha256 "9fa7953364f29be84526e9c19b385ca9a3ff518ae463842ac335e9baecb46413"

      def install
        bin.install "spinup"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/YaleSpinup/spinup-cli/releases/download/v0.4.6-pre3/spinup-cli_0.4.6-pre3_linux_amd64.tar.gz"
      sha256 "3b58b171762ab4cb5f11d791805fccfad095a42ca50d930da3d962d591e0e890"

      def install
        bin.install "spinup"
      end
    end
  end

  test do
    system "#{bin}/spinup", "version"
  end
end
