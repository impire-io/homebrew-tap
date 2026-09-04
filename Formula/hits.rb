# typed: false
# frozen_string_literal: true

# Seeded by hand from the v0.1.0 release artifacts; from the next release
# on, this file is written by GoReleaser (impire-io/hits). DO NOT EDIT.
class Hits < Formula
  desc "Headless, agent-native issue tracking"
  homepage "https://github.com/impire-io/hits"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/impire-io/hits/releases/download/v0.1.0/hits_0.1.0_darwin_amd64.tar.gz"
      sha256 "d4b45194f51cbd366c71de668fedf93f62203fb0952c0b7560d39952ba118d79"

      define_method(:install) do
        bin.install "hits"
        bin.install "hits-mcp"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/impire-io/hits/releases/download/v0.1.0/hits_0.1.0_darwin_arm64.tar.gz"
      sha256 "7aa2f8d195d2d5231b6d95d60702d01093afd5c4f90ec5a143d92d63a31c1a50"

      define_method(:install) do
        bin.install "hits"
        bin.install "hits-mcp"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/impire-io/hits/releases/download/v0.1.0/hits_0.1.0_linux_amd64.tar.gz"
      sha256 "8cafc60ead66fa83d2408778466fcb3324ae53b79240dcd01aff6a4efade4033"
      define_method(:install) do
        bin.install "hits"
        bin.install "hits-mcp"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/impire-io/hits/releases/download/v0.1.0/hits_0.1.0_linux_arm64.tar.gz"
      sha256 "773cf48ddb5043ce27f3c74b0e16fe090d10f10ea564d1c19e3c75a7b6135f17"
      define_method(:install) do
        bin.install "hits"
        bin.install "hits-mcp"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hits version")
  end
end
