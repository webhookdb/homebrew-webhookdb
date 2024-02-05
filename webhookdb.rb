# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Webhookdb < Formula
  desc "Query and store any API in real-time with SQL. More at https://webhookdb.com"
  homepage "https://webhookdb.com"
  version "0.14.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/webhookdb/webhookdb-cli/releases/download/0.14.1/webhookdb_0.14.1_macos_x86_64.tar.gz"
      sha256 "ecc80a2d16f54f398c47c2963353669b2f3527e2e459a6c632c35fc9da1f4539"

      def install
        bin.install "webhookdb"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/webhookdb/webhookdb-cli/releases/download/0.14.1/webhookdb_0.14.1_macos_arm64.tar.gz"
      sha256 "6be448f5a934110eee7e342fb8598c011b5c6d07afe025da46363a54d1e60e3f"

      def install
        bin.install "webhookdb"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/webhookdb/webhookdb-cli/releases/download/0.14.1/webhookdb_0.14.1_linux_arm64.tar.gz"
      sha256 "efa647ad4a7c9bf832121f10b5fd53a382cf32fb57bd89b65dcbcde8053cce9a"

      def install
        bin.install "webhookdb"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/webhookdb/webhookdb-cli/releases/download/0.14.1/webhookdb_0.14.1_linux_x86_64.tar.gz"
      sha256 "5a0a0d5dafa8e4bf1f6659fa56cb05d7455213915f4432b218f64c8cc6b5a7e2"

      def install
        bin.install "webhookdb"
      end
    end
  end

  def caveats
    <<~EOS
      ❤ Thanks for installing the WebhookDB CLI! Run `webhookdb auth login` to get register or sign in.
    EOS
  end
end
