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
      # Remove unrecognized options if they cause configure to fail
      # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
      bin.install "src/run.sh" => "tiny-sh-example"
      # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    end
  
    test do
      # `test do` will create, run in and delete a temporary directory.
      #
      # This test will fail and we won't accept that! For Homebrew/homebrew-core
      # this will need to be a test that verifies the functionality of the
      # software. Run the test with `brew test homebrew-tiny-sh-example`. Options passed
      # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
      #
      # The installed folder is not in the path, so use the entire path to any
      # executables being tested: `system "#{bin}/program", "do", "something"`.
      system "#{bin}/tiny-sh-example", "mvogelgesang"
    end
  end
  