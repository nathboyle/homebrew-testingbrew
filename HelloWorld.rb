class HelloWorld < Formula
  desc "testing hello brew"
  homepage "https://github.com/nathboyle/testingbrew"


  url "https://github.com/nathboyle/testingbrew/blob/main/test.zip", :using => :curl

  def install
    bin.install "nathboyle/testingbrew"
  end
end