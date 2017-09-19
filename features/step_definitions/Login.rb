Dado(/^que estou na tela de login$/) do
      @page = page(LoginScreen)
  end
  
  Quando(/^preencho os dados com valores válidos de um usuário$/) do
    @page.login
  end
  
  Entao(/^devo ver a mensagem "([^"]*)"$/) do |arg1|
    @page.contem_mensagem_sucesso
  end
  