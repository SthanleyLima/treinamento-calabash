Dado(/^que estou na tela de login$/) do
      @page = page(LoginScreen)
  end
  
  Quando(/^preencho os dados com valores válidos de um usuário$/) do
    @page.login
  end
  
  Entao(/^devo ver a mensagem logado com sucesso$/) do
    fail "Não foi possivel logar!!" unless @page.contem_mensagem_sucesso
  end
  