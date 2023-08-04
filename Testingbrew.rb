class Testingbrew < Formula
  desc "testing hello brew"
  homepage "https://github.com/nathboyle/homebrew-testingbrew"
  url "https://github.com/nathboyle/homebrew-testingbrew/archive/refs/tags/v0.0.7.tar.gz"

  def install
    bin.install "testing.sh" => "testing"
  end
  test do
    # Test your script by checking its version or performing a basic test
    assert_match "version", shell_output("#{bin}/testing --version")
  end
end
