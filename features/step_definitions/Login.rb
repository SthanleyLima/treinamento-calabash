#####________________________________DADO_______________________________________#

Dado(/^que estou na tela de login$/) do
      @page = page(LoginScreen)
  end


#####________________________________QUANDO_______________________________________#
  Quando(/^preencho os dados com valores válidos de um usuário$/) do
    @page.login("calabash@curso.com", "senha12345")
  end
  
  Quando(/^preencho os dados com email invalido$/) do
    @page.login("", "senha12345")
  end

  Quando(/^preencho os dados com senha em branco$/) do
    @page.login("calabash@curso.com", "")
  end

#####________________________________ENTAO_______________________________________#

  
  Entao(/^devo ver a mensagem digite um email valido$/) do
    fail "Mensagem de email incorreto" unless @page.exists?('Digite um email válido.')
  end

  Entao(/^devo ver a mensagem senha obrigatoria$/) do
    fail "Mensagem de senha incorreta" unless @page.exists?('Senha Obrigatória.')
  end

  Entao(/^devo ver a mensagem logado com sucesso$/) do
    fail "Não foi possivel logar!!" unless @page.exists?('Logado com sucesso')
  end
  