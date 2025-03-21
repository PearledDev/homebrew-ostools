class Hexhsl < Formula
  desc "A simple CLI tool to convert hex to HSL"
  homepage "https://github.com/PearledDev/hexhsl"
  version "v0.1.1"
  license "MIT"
  head "https://github.com/Pearled/hexhsl.git", branch: "main"

  author "Pearled"

  on_macos do
    url "https://github.com/PearledDev/hexhsl/releases/download/v0.1.1/hexhsl-macos"
    sha256 "1c34b090e237aa04c64289d134f4605024bb4497d4d7b18a56b22ddf4f544e43"

    def install
      bin.install "hexhsl-macos" => "hexhsl"
      ohai "Thanks for installing hexhsl by Pearled. Usage: hexhsl <hex_color>"
    end
  end

  on_linux do
    url "https://github.com/PearledDev/hexhsl/releases/download/v0.1.1/hexhsl-linux"
    sha256 "c9891135dd471f0a0e3a49991fb932f102c65bee3aef152b1f94dba40da8f792"

    def install
      bin.install "hexhsl-linux" => "hexhsl"
      ohai "Thanks for installing hexhsl by Pearled. Usage: hexhsl <hex_color>"
    end
  end

  test do
    system "#{bin}/hexhsl", "--version"
  end
end
