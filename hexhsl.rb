class Hexhsl < Formula
  desc "A simple CLI tool to convert hex to HSL"
  homepage "https://github.com/PearledDev/hexhsl"
  version "v0.1.1"
  license "MIT"
  head "https://github.com/Pearled/hexhsl.git", branch: "main"

  on_macos do
    url "https://github.com/PearledDev/hexhsl/releases/download/v0.1.1/hexhsl-macos"
    sha256 "329efbbe663536b9055724127fbc3befd58b90586e4e7e0d0dac516c9e5d35b5"

    def install
      bin.install "hexhsl-macos" => "hexhsl"
      ohai "Thanks for installing hexhsl by Pearled. Usage: hexhsl <hex_color>"
    end
  end

  on_linux do
    url "https://github.com/PearledDev/hexhsl/releases/download/v0.1.1/hexhsl-linux"
    sha256 "6dc8432c20c0411f1b07e03b803e933db73ecea209b623834a0e8e8b580e70bb"

    def install
      bin.install "hexhsl-linux" => "hexhsl"
      ohai "Thanks for installing hexhsl by Pearled. Usage: hexhsl <hex_color>"
    end
  end

  test do
    system "#{bin}/hexhsl", "--version"
  end
end
