class TidyRequest < Formula
  desc "TIDY - AI Property Manager CLI"
  homepage "https://tidy.com/developers"
  url "https://registry.npmjs.org/@tidydotcom/cli/-/cli-1.0.2.tgz"
  sha256 "21d763a4f04e59c64532711b48f149d069b47074c2fe87f85d103a1a17d4d4ca"
  license "MIT"

  def install
    bin.install "bin/tidy-request"
  end

  def caveats
    <<~EOS
      TIDY - AI Property Manager

      Set your API token before use:
        export TIDY_API_TOKEN=your_bearer_token

      Then send requests in plain English:
        tidy-request "Schedule a deep clean for next Tuesday"

      Docs & API tokens: https://tidy.com/developers
    EOS
  end

  test do
    output = shell_output("#{bin}/tidy-request 2>&1", 1)
    assert_match "TIDY_API_TOKEN", output
  end
end
