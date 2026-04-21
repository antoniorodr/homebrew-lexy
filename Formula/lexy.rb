class Lexy < Formula
  include Language::Python::Virtualenv
  desc 'CLI tool that fetches programming tutorials from "Learn X in Y Minutes" directly into your terminal.'
  homepage 'https://github.com/antoniorodr/lexy'
  url 'https://github.com/antoniorodr/lexy/releases/download/v0.6.3/lexy-0.6.3.tar.gz'
  sha256 'b2ddfe6321e767055fa2a7adeb5ae381a4e2823ad11442a897b15efa30436a07'
  license 'MIT'

  livecheck do
    url :stable
  end

  depends_on 'python@3.13'

  resource 'click' do
    url 'https://files.pythonhosted.org/packages/57/75/31212c6bf2503fdf920d87fee5d7a86a2e3bcf444984126f13d8e4016804/click-8.3.2.tar.gz'
    sha256 '14162b8b3b3550a7d479eafa77dfd3c38d9dc8951f6f69c78913a8f9a7540fd5'
  end

  resource 'beautifulsoup4' do
    url 'https://files.pythonhosted.org/packages/c3/b0/1c6a16426d389813b48d95e26898aff79abbde42ad353958ad95cc8c9b21/beautifulsoup4-4.14.3.tar.gz'
    sha256 '6292b1c5186d356bba669ef9f7f051757099565ad9ada5dd630bd9de5fa7fb86'
  end

  resource 'requests' do
    url 'https://files.pythonhosted.org/packages/5f/a4/98b9c7c6428a668bf7e42ebb7c79d576a1c3c1e3ae2d47e674b468388871/requests-2.33.1.tar.gz'
    sha256 '18817f8c57c6263968bc123d237e3b8b08ac046f5456bd1e307ee8f4250d3517'
  end

  resource 'typer' do
    url 'https://files.pythonhosted.org/packages/f5/24/cb09efec5cc954f7f9b930bf8279447d24618bb6758d4f6adf2574c41780/typer-0.24.1.tar.gz'
    sha256 'e39b4732d65fbdcde189ae76cf7cd48aeae72919dea1fdfc16593be016256b45'
  end

  resource 'typing-extensions' do
    url 'https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz'
    sha256 '0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466'
  end

  resource 'urllib3' do
    url 'https://files.pythonhosted.org/packages/c7/24/5f1b3bdffd70275f6661c76461e25f024d5a38a46f04aaca912426a2b1d3/urllib3-2.6.3.tar.gz'
    sha256 '1b62b6884944a57dbe321509ab94fd4d3b307075e0c2eae991ac71ee15ad38ed'
  end

  resource 'idna' do
    url 'https://files.pythonhosted.org/packages/6f/6d/0703ccc57f3a7233505399edb88de3cbd678da106337b9fcde432b65ed60/idna-3.11.tar.gz'
    sha256 '795dafcc9c04ed0c1fb032c2aa73654d8e8c5023a7df64a53f39190ada629902'
  end

  resource 'certifi' do
    url 'https://files.pythonhosted.org/packages/af/2d/7bf41579a8986e348fa033a31cdd0e4121114f6bce2457e8876010b092dd/certifi-2026.2.25.tar.gz'
    sha256 'e887ab5cee78ea814d3472169153c2d12cd43b14bd03329a39a9c6e2e80bfba7'
  end

  resource 'rich' do
    url 'https://files.pythonhosted.org/packages/c0/8f/0722ca900cc807c13a6a0c696dacf35430f72e0ec571c4275d2371fca3e9/rich-15.0.0.tar.gz'
    sha256 'edd07a4824c6b40189fb7ac9bc4c52536e9780fbbfbddf6f1e2502c31b068c36'
  end

  resource 'soupsieve' do
    url 'https://files.pythonhosted.org/packages/7b/ae/2d9c981590ed9999a0d91755b47fc74f74de286b0f5cee14c9269041e6c4/soupsieve-2.8.3.tar.gz'
    sha256 '3267f1eeea4251fb42728b6dfb746edc9acaffc4a45b27e19450b676586e8349'
  end

  resource 'chardet' do
    url 'https://files.pythonhosted.org/packages/19/b6/9df434a8eeba2e6628c465a1dfa31034228ef79b26f76f46278f4ef7e49d/chardet-7.4.3.tar.gz'
    sha256 'cc1d4eb92a4ec1c2df3b490836ffa46922e599d34ce0bb75cf41fd2bf6303d56'
  end

  resource 'tomlkit' do
    url 'https://files.pythonhosted.org/packages/c3/af/14b24e41977adb296d6bd1fb59402cf7d60ce364f90c890bd2ec65c43b5a/tomlkit-0.14.0.tar.gz'
    sha256 'cf00efca415dbd57575befb1f6634c4f42d2d87dbba376128adb42c121b87064'
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    output = shell_output("#{bin}/lexy --help")
    assert_match 'Usage', output
  end
end
