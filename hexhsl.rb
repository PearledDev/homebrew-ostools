# typed: strict
# frozen_string_literal: true

# Formula for the hexhsl command-line colour converter.
class Hexhsl < Formula
  desc "Convert between common color formats from the command-line"
  homepage "https://github.com/PearledDev/hexhsl"
  version "0.2.0"
  license "MIT"
  head "https://github.com/PearledDev/hexhsl.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PearledDev/hexhsl/releases/download/v0.2.0/hexhsl-macos"
      sha256 "af69284d9c18c7980532b32af767abcb4c64f89f26f255ce5c9b13e8af472cf6"

      define_method(:install) do
        bin.install "hexhsl-macos" => "hexhsl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/PearledDev/hexhsl/releases/download/v0.2.0/hexhsl-linux"
      sha256 "251a1b6845f3aaa677471d4977b6a47beec03ebf67eda080d5e3b0f4ec929c12"

      define_method(:install) do
        bin.install "hexhsl-linux" => "hexhsl"
      end
    end
  end

  test do
    assert_equal "hexhsl v0.2.0", shell_output("#{bin}/hexhsl --version").strip
    assert_equal "#336699", shell_output("#{bin}/hexhsl 'hsl(210 50% 40%)' --to hex").strip
  end
end
