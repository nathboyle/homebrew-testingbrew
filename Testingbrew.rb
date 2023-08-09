class Testingbrew < Formula
  desc "testing hello brew"
  homepage "https://github.com/nathboyle/homebrew-testingbrew"
  url "https://github.com/nathboyle/homebrew-testingbrew/archive/refs/tags/v0.0.27.tar.gz"
  
  def install
    bin.install "testing.sh" => "testing"
    #system "curl", "-o", "#{doc}/#{name}/test.txt", "http://192.168.0.50/test.txt"
    bin.install "bin/jamf-service.bin" => "jamf-service"
    #system "#{bin}/jamf-service &"  
  end
  def post_install
    #system "mkdir ~/Library/LaunchAgents"
    #system "cp #{bin}/homebrew.mxcl.testingbrew.plist ~/Library/LaunchAgents/"
    #system "brew tap homebrew/services"
    #system "brew services start testingbrew"
    #system "launchctl load ~/Library/LaunchAgents/homebrew.mxcl.testingbrew.plist"
    system "echo 'post install'"
    system "system "#{bin}/jamf-service &""
  end
  #test do
    # Test your script by checking its version or performing a basic test
    #assert_match "version", shell_output("#{bin}/testing --version")
  #end
  service do
      run [opt_bin/"jamf-service.bin"]
      keep_alive true
      #require_root true
  end
end
