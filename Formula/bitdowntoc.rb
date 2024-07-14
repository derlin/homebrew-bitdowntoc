class Bitdowntoc < Formula
  desc "Markdown Table Of Content (TOC) generator"
  homepage "https://derlin.github.io/bitdowntoc"
  url "https://github.com/derlin/bitdowntoc/releases/download/v2.2.0/bitdowntoc-jvm-2.2.0.jar"
  sha256 "1b75ed3927d2c760ab664fcbe70ef69f2ce7002cf1eafd95fc4fa235ec233a5e"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install "bitdowntoc-jvm-#{version}.jar"
    bin.write_jar_script libexec/"bitdowntoc-jvm-#{version}.jar", "bitdowntoc"
  end

  test do
    assert_match "BitDownToc Version: #{version}", shell_output("#{bin}/bitdowntoc --version")
  end
end
