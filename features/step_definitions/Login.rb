Dado(/^que estou na tela de login$/) do
      element_exists("* text:'Curso Calabash'")
  end
  
  Quando(/^eu preencher o campo usuario$/) do
    enter_text "* id:'login_edtUsuario'", "calabash@curso.com"
    hide_soft_keyboard()
  end
  
  Quando(/^eu preencher o campo senha$/) do
    enter_text "* id:'login_edtSenha'", "senha12345"
    hide_soft_keyboard()
  end
  
  Quando(/^acionar o botao login$/) do
    touch("* id:'button_entrar'")
  end
  
  Entao(/^devo ver a mensagem "([^"]*)"$/) do |arg1|
    element_exists("* text:'Logado com sucesso'")
  end
  