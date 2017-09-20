# coding: utf-8
class LoginScreen < BaseClass

  element(:login)         {'editText_Usuario'}
  element(:senha)         {'editText_Senha'}
  element(:bt_entrar)     {'button_entrar'}

def login
  keyboard_enter_text('login_edtUsuario', "calabash@curso.com")
  hide_soft_keyboard()
  keyboard_enter_text('login_edtSenha', "senha12345")
  hide_soft_keyboard()
  tap_on bt_entrar
end

def contem_mensagem_sucesso
  is_alert_exist_with_text("Logado sem sucesso")
  sleep(0.5)
end
end


  