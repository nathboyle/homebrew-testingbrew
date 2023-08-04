class Testingbrew < Formula
  desc "testing hello brew"
  homepage "https://github.com/nathboyle/homebrew-testingbrew"
  url "https://github.com/nathboyle/homebrew-testingbrew/archive/refs/tags/v0.0.4.tar.gz"

  def install
    bin.install "testing.sh"
  end
end
