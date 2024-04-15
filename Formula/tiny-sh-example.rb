# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class TinyShExample < Formula
    desc "A tiny shell script that is installable via homebrew. Given a GitHub username, returns the number of public repositories."
    homepage "https://github.com/mvogelgesang/homebrew-tiny-sh-example/tree/main"
    url "https://github.com/mvogelgesang/homebrew-tiny-sh-example/archive/refs/tags/v0.0.1.tar.gz"
    sha256 "d5de4b985e17000bb392bef087d3245697f553aa1d5035d4477e53d226415ab3"
    license "MIT"
  
    depends_on "jq"
  
    def install
      # here we are installing the shell script and giving it an alias of "tiny-sh-example"
      bin.install "src/run.sh" => "tiny-sh-example"
    end
  
    test do
      # this is a simple test that checks if the script is working as expected
      system "#{bin}/tiny-sh-example", "mvogelgesang"
    end
  end
  