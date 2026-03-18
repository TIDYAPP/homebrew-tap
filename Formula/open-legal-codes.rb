class OpenLegalCodes < Formula
  desc "Look up US legal codes from your terminal or AI agent. By TIDY - AI Property Manager."
  homepage "https://openlegalcodes.org"
  url "https://registry.npmjs.org/open-legal-codes/-/open-legal-codes-0.1.1.tgz"
  sha256 "d28a67442a828c4b01d3f3dd61934998ac20d47bc5a91248c0ffb3b7825825f7"
  license "MIT"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "Open Legal Codes CLI", shell_output("#{bin}/open-legal-codes --help")
  end
end
