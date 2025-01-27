class Bitdowntoc < Formula
  desc "Markdown Table Of Content (TOC) generator"
  homepage "https://derlin.github.io/bitdowntoc"
  url "https://github.com/derlin/bitdowntoc/releases/download/v2.2.1/bitdowntoc-jvm-2.2.1.jar"
  sha256 "3f448894d83312721dc4454fc18b91483b854167c256de74b0319df44a447d6c"
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
