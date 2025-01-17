# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Webhookdb < Formula
  desc "Query and store any API in real-time with SQL. More at https://webhookdb.com"
  homepage "https://webhookdb.com"
  version "0.16.0"

  on_macos do
    on_intel do
      url "https://github.com/webhookdb/webhookdb-cli/releases/download/0.16.0/webhookdb_0.16.0_macos_x86_64.tar.gz"
      sha256 "3a814d37d81c5881480f40b7565ed06d6be23a2fb0d2746b7a0d0721c6adc2cf"

      def install
        bin.install "webhookdb"
      end
    end
    on_arm do
      url "https://github.com/webhookdb/webhookdb-cli/releases/download/0.16.0/webhookdb_0.16.0_macos_arm64.tar.gz"
      sha256 "f53c78e33f2263b148abd5ee3cb90dc5e51e6295f5602ba27fc87060b1748ec5"

      def install
        bin.install "webhookdb"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/webhookdb/webhookdb-cli/releases/download/0.16.0/webhookdb_0.16.0_linux_x86_64.tar.gz"
        sha256 "3229b94bd253d4b531ad211d217d48ef458a3668331443d02f93ef12c061bfb0"

        def install
          bin.install "webhookdb"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/webhookdb/webhookdb-cli/releases/download/0.16.0/webhookdb_0.16.0_linux_arm64.tar.gz"
        sha256 "749899692756689dc7f3063e233d9aedf0366571614a69fff7c5acdd6db5e26c"

        def install
          bin.install "webhookdb"
        end
      end
    end
  end

  def caveats
    <<~EOS
      ❤ Thanks for installing the WebhookDB CLI! Run `webhookdb auth login` to get register or sign in.
    EOS
  end
end
