# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Terralint < Formula
  desc "An opinionated terraform linter"
  homepage "https://github.com/vahid-haghighat/terralint"
  version "0.2.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/vahid-haghighat/terralint/releases/download/v0.2.8/terralint_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "a343f0e6311b7b878349e434f9b4a4340feb1c1dd81bc868df057bc8fada1939"

      def install
        bin.install "terralint"
      end
    end
    on_arm do
      url "https://github.com/vahid-haghighat/terralint/releases/download/v0.2.8/terralint_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d9bcd334877b9fe0647e191425ffe51059909009998a67d604b187be260749e7"

      def install
        bin.install "terralint"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vahid-haghighat/terralint/releases/download/v0.2.8/terralint_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
        sha256 "5954d0942bfb7255748a2b73a69cf74d476ef6e4136b40b303ac1063bdaa4344"

        def install
          bin.install "terralint"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vahid-haghighat/terralint/releases/download/v0.2.8/terralint_Linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "4b113bbe85aeb55ef5a02a9c80eefa2ecb130c306f1d0a79b9bce1602952510e"

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
