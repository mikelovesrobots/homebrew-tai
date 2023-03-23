class Tai < Formula
  include Language::Python::Virtualenv

  depends_on "python@3.x"

  desc "TAI (text artisan interface) is a productivity command-line tool that uses openai tools for text transformations"
  homepage "https://github.com/mikelovesrobots/tai"
  url "https://github.com/mikelovesrobots/tai/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d80a8077940b8216f8ccb885b4417f14bc5d0b536e44c223df40825cf1bac4d1"
  head "https://github.com/mikelovesrobots/tai.git", branch: "main"
  license "MIT" # Update with the appropriate license for your project.
  version "0.1.0"

  def install
    virtualenv_install_with_resources
  end

  test do
    # Test the command-line interface here.
    assert_match "PUT_EXPECTED_OUTPUT_HERE", shell_output("#{bin}/tai PUT_TEST_COMMAND_HERE")
  end
end


