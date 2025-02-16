class Bitdowntoc < Formula
  desc "Markdown Table Of Content (TOC) generator"
  homepage "https://derlin.github.io/bitdowntoc"
  url "https://github.com/derlin/bitdowntoc/releases/download/v2.3.0/bitdowntoc-jvm-2.3.0.jar"
  sha256 "eecc754a5fb610998b7cfc04ec94f34627b0d196ea8f8f80c1bd75424144c7c6"
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
