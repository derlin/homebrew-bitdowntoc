class Bitdowntoc < Formula
  desc "Markdown Table Of Content (TOC) generator"
  homepage "https://derlin.github.io/bitdowntoc"
  url "https://github.com/derlin/bitdowntoc/releases/download/v2.1.0/bitdowntoc-jvm-2.1.0.jar"
  sha256 "b7a21d2a793a2ecb6c20f27aa8fffc72702daa364b2a89bed32580e302194650"
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
