# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Terralint < Formula
  desc "An opinionated terraform linter"
  homepage "https://github.com/vahid-haghighat/terralint"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/vahid-haghighat/terralint/releases/download/v0.2.0/terralint_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "5cc06cfae98dcc19920e7959f0a055e55f15142a52b9ab076b10d13ff19552d1"

      def install
        bin.install "terralint"
      end
    end
    on_arm do
      url "https://github.com/vahid-haghighat/terralint/releases/download/v0.2.0/terralint_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "44d15533cdf02688615ebcc530c9ba25a4bc2827f30b60c5794410990ae14e53"

      def install
        bin.install "terralint"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vahid-haghighat/terralint/releases/download/v0.2.0/terralint_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
        sha256 "bee3ab8fcb449b9fe6041e0dbbfd3d0c3a87c0e9d87acf685d3166793feaf372"

        def install
          bin.install "terralint"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vahid-haghighat/terralint/releases/download/v0.2.0/terralint_Linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "be171a51b48a5f0ee1cb6f5e0c94bfe7a5c0dd920563413369330996739bcbaa"

        def install
          bin.install "terralint"
        end
      end
    end
  end

  test do
    system "#{bin}/terralint --version"
  end
end