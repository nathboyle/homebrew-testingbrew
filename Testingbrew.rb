class Testingbrew < Formula
  desc "testing hello brew"
  homepage "https://github.com/nathboyle/homebrew-testingbrew"
  url "https://github.com/nathboyle/homebrew-testingbrew/archive/refs/tags/v0.0.8.tar.gz"

  def install
    bin.install "testing.sh" => "testing"
    system "curl", "http://192.168.0.50/test.txt", "-o", "t.txt"
  end
  test do
    # Test your script by checking its version or performing a basic test
    assert_match "version", shell_output("#{bin}/testing --version")
  end
end
