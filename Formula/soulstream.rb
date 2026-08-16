# typed: false
# frozen_string_literal: true

# This file is kept by GoReleaser from the soulstream release pipeline
# (impire-io/soulstream .goreleaser.yaml `brews`). Hand-edits are
# overwritten by the next release.
class Soulstream < Formula
  desc "Your realm in one binary — the Soulstream node"
  homepage "https://github.com/impire-io/soulstream"
  version "0.13.0-rc.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/impire-io/soulstream/releases/download/v0.13.0-rc.1/soulstream_0.13.0-rc.1_darwin_amd64.tar.gz"
      sha256 "095f4df2dcef210cc27139a87808c01d6634b34131b616bfaa5c1f1b89395e0a"

      def install
        bin.install "soulstream"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/impire-io/soulstream/releases/download/v0.13.0-rc.1/soulstream_0.13.0-rc.1_darwin_arm64.tar.gz"
      sha256 "11af40327c478354defff493e0ffbe7c9b1b16f8bdd497cb71fc78b27a90e833"

      def install
        bin.install "soulstream"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/impire-io/soulstream/releases/download/v0.13.0-rc.1/soulstream_0.13.0-rc.1_linux_amd64.tar.gz"
      sha256 "11bb3856270793e1329f891f9861b9060b72760d88a4f3385db13e826f6418c6"

      def install
        bin.install "soulstream"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/impire-io/soulstream/releases/download/v0.13.0-rc.1/soulstream_0.13.0-rc.1_linux_arm64.tar.gz"
      sha256 "408152216064b950b939a966516148a53dd3f14596f7825a8d4b8d39684dc941"

      def install
        bin.install "soulstream"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/soulstream version")
  end
end
