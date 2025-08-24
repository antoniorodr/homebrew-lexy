class Lexy < Formula
  include Language::Python::Virtualenv
  desc 'CLI tool that fetches programming tutorials from "Learn X in Y Minutes" directly into your terminal.'
  homepage 'https://github.com/antoniorodr/lexy'
  url 'https://github.com/antoniorodr/lexy/releases/download/v0.4.4/lexy-0.4.4.tar.gz'
  sha256 'ac6da50a5dcac8af963e668ec2d45afe6544b35e770cb4f6bdf4c451f76cd666'
  license 'MIT'

  livecheck do
    url :stable
  end

  depends_on 'python@3.13'

  resource 'click' do
    url 'https://files.pythonhosted.org/packages/b9/2e/0090cbf739cee7d23781ad4b89a9894a41538e4fcf4c31dcdd705b78eb8b/click-8.1.8.tar.gz'
    sha256 'ed53c9d8990d83c2a27deae68e4ee337473f6330c040a31d4225c9574d16096a'
  end

  resource 'beautifulsoup4' do
    url 'https://files.pythonhosted.org/packages/d8/e4/0c4c39e18fd76d6a628d4dd8da40543d136ce2d1752bd6eeeab0791f4d6b/beautifulsoup4-4.13.4.tar.gz'
    sha256 'dbb3c4e1ceae6aefebdaf2423247260cd062430a410e38c66f2baa50a8437195'
  end

  resource 'requests' do
    url 'https://files.pythonhosted.org/packages/63/70/2bf7780ad2d390a8d301ad0b550f1581eadbd9a20f896afe06353c2a2913/requests-2.32.3.tar.gz'
    sha256 '55365417734eb18255590a9ff9eb97e9e1da868d4ccd6402399eaf68af20a760'
  end

  resource 'typer' do
    url 'https://files.pythonhosted.org/packages/98/1a/5f36851f439884bcfe8539f6a20ff7516e7b60f319bbaf69a90dc35cc2eb/typer-0.15.3.tar.gz'
    sha256 '818873625d0569653438316567861899f7e9972f2e6e0c16dab608345ced713c'
  end

  resource 'typing-extensions' do
    url 'https://files.pythonhosted.org/packages/f6/37/23083fcd6e35492953e8d2aaaa68b860eb422b34627b13f2ce3eb6106061/typing_extensions-4.13.2.tar.gz'
    sha256 'e6c81219bd689f51865d9e372991c540bda33a0379d5573cddb9a3a23f7caaef'
  end

  resource 'urllib3' do
    url 'https://files.pythonhosted.org/packages/8a/78/16493d9c386d8e60e442a35feac5e00f0913c0f4b7c217c11e8ec2ff53e0/urllib3-2.4.0.tar.gz'
    sha256 '414bc6535b787febd7567804cc015fee39daab8ad86268f1310a9250697de466'
  end

  resource 'idna' do
    url 'https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz'
    sha256 '12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9'
  end

  resource 'certifi' do
    url 'https://files.pythonhosted.org/packages/e8/9e/c05b3920a3b7d20d3d3310465f50348e5b3694f4f88c6daf736eef3024c4/certifi-2025.4.26.tar.gz'
    sha256 '0a816057ea3cdefcef70270d2c515e4506bbc954f417fa5ade2021213bb8f0c6'
  end

  resource 'rich' do
    url 'https://files.pythonhosted.org/packages/a1/53/830aa4c3066a8ab0ae9a9955976fb770fe9c6102117c8ec4ab3ea62d89e8/rich-14.0.0.tar.gz'
    sha256 '82f1bc23a6a21ebca4ae0c45af9bdbc492ed20231dcb63f297d6d1021a9d5725'
  end

  resource 'soupsieve' do
    url 'https://files.pythonhosted.org/packages/3f/f4/4a80cd6ef364b2e8b65b15816a843c0980f7a5a2b4dc701fc574952aa19f/soupsieve-2.7.tar.gz'
    sha256 'ad282f9b6926286d2ead4750552c8a6142bc4c783fd66b0293547c8fe6ae126a'
  end

  resource 'chardet' do
    url 'https://files.pythonhosted.org/packages/f3/0d/f7b6ab21ec75897ed80c17d79b15951a719226b9fababf1e40ea74d69079/chardet-5.2.0.tar.gz'
    sha256 '1b3b6ff479a8c414bc3fa2c0852995695c4a026dcd6d0633b2dd092ca39c1cf7'
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    output = shell_output("#{bin}/lexy --help")
    assert_match 'Usage', output
  end
end
