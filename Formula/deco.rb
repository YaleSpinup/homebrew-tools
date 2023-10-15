# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deco < Formula
  desc "DockerEvironmentCOntrol"
  homepage "https://github.com/YaleUniversity/deco"
  version "1.4.2"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/YaleUniversity/deco/releases/download/v1.4.2/deco_1.4.2_darwin_amd64.tar.gz"
      sha256 "e704c7fe9890bac52c0a9e5654e5f070c517144a0bdf00af59b3ccdaecd3807c"

      def install
        bin.install "deco"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/YaleUniversity/deco/releases/download/v1.4.2/deco_1.4.2_darwin_arm64.tar.gz"
      sha256 "686f494204a27b699f78f02ffa9c0b20cf2f3c287b5c0b0ff661a6a2bbcfa841"

      def install
        bin.install "deco"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/YaleUniversity/deco/releases/download/v1.4.2/deco_1.4.2_linux_arm64.tar.gz"
      sha256 "31be70f35c99f9565a03490c2bb0bf6aee93bf97c196bf7e8e6417b4cdd13943"

      def install
        bin.install "deco"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/YaleUniversity/deco/releases/download/v1.4.2/deco_1.4.2_linux_amd64.tar.gz"
      sha256 "73a21b2420ffe4172873abfb8e45b4564157db34b89d1d80255478b892d2902e"

      def install
        bin.install "deco"
      end
    end
  end

  test do
    system "#{bin}/deco", "version"
  end
end
