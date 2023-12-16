# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Toker < Formula
  desc "Simple token management tool"
  homepage "https://github.com/YaleSpinup/toker"
  version "0.3.0-pre9"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/YaleSpinup/toker/releases/download/v0.3.0-pre9/toker_0.3.0-pre9_darwin_arm64.tar.gz"
      sha256 "15c32ebfa088bf90105defac93c0cdf98f6d286135fc779bcfdc139ce34d5618"

      def install
        bin.install "toker"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/YaleSpinup/toker/releases/download/v0.3.0-pre9/toker_0.3.0-pre9_darwin_amd64.tar.gz"
      sha256 "ded4fcc0e72745342efeeb06a9628743a9cae202ca6f84345c5f060872d9925c"

      def install
        bin.install "toker"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/YaleSpinup/toker/releases/download/v0.3.0-pre9/toker_0.3.0-pre9_linux_arm64.tar.gz"
      sha256 "0ecf73d17397cd49561b536a4e2ba2158a3ac68c251b45bbbff10493910ecc68"

      def install
        bin.install "toker"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/YaleSpinup/toker/releases/download/v0.3.0-pre9/toker_0.3.0-pre9_linux_amd64.tar.gz"
      sha256 "81d2b139940f8f476a2a5dfe5fdc3965dd33642c94eae25631070d39415a0b0d"

      def install
        bin.install "toker"
      end
    end
  end

  test do
    system "#{bin}/toker", "version"
  end
end
