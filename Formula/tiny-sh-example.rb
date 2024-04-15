# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class TinyShExample < Formula
    desc "A tiny shell script that is installable via homebrew. Given a GitHub username, returns the number of public repositories."
    homepage "https://github.com/mvogelgesang/homebrew-tiny-sh-example/tree/main"
    url "https://github.com/mvogelgesang/homebrew-tiny-sh-example/archive/refs/tags/v0.0.2.tar.gz"
    sha256 "0a39619a1b93d92d7eb60960c652689610123a5f714e655641ea3ba690c7bb9a"
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
  