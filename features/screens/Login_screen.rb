# coding: utf-8
class LoginScreen < BaseClass

  element(:login)         {"* id:'editText_Usuario'"}
  element(:senha)         {'editText_Senha'}
  element(:bt_entrar)     {'button_entrar'}

def login
  enter_text "* id:'login_edtUsuario'", "calabash@curso.com"
  hide_soft_keyboard()
  enter_text "* id:'login_edtSenha'", "senha12345"
  hide_soft_keyboard()
  tap_on bt_entrar
end

def contem_mensagem_sucesso
  element_exists("* text:'Logado com sucesso'")
end

end


  