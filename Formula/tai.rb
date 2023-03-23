class Tai < Formula
  include Language::Python::Virtualenv

  depends_on "python@3.11"

  desc "TAI (text artisan interface) is a productivity command-line tool that uses openai tools for text transformations"
  homepage "https://github.com/mikelovesrobots/tai"
  url "https://github.com/mikelovesrobots/tai/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d80a8077940b8216f8ccb885b4417f14bc5d0b536e44c223df40825cf1bac4d1"
  head "https://github.com/mikelovesrobots/tai.git", branch: "main"
  license "MIT" # Update with the appropriate license for your project.
  version "0.1.0"

  # requirements.txt dependencies
  resource "openai" do
    url "https://files.pythonhosted.org/packages/a9/94/3d4755c8126eeb4b3469d8b9aff5600085f6d7de691da1ac04c79c24dc48/openai-0.27.2.tar.gz"
    sha256 "5869fdfa34b0ec66c39afa22f4a0fb83a135dff81f6505f52834c6ab3113f762"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/59/87/84326af34517fca8c58418d148f2403df25303e02736832403587318e9e8/click-8.1.3.tar.gz"
    sha256 "7682dc8afb30297001674575ea00d1814d808d6a36af415a82bd481d37ba7b8e"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    # Test the command-line interface here.
    assert_match "PUT_EXPECTED_OUTPUT_HERE", shell_output("#{bin}/tai PUT_TEST_COMMAND_HERE")
  end
end
