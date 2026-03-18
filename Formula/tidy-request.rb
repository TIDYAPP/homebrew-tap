class TidyRequest < Formula
  desc "TIDY - AI Property Manager CLI"
  homepage "https://tidy.com/developers"
  url "https://registry.npmjs.org/@tidydotcom/cli/-/cli-1.0.0.tgz"
  sha256 "388228eed9e40cd2cc28056d2c9b1d6be2363634b882ec7825d1506ee4e41b8c"
  license "MIT"

  def install
    cd "package" do
      bin.install "bin/tidy-request"
    end
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
