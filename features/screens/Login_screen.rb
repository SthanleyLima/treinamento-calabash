# coding: utf-8
class LoginScreen < BaseClass

  element(:login)         {'editText_Usuario'}
  element(:senha)         {'editText_Senha'}
  element(:bt_entrar)     {'button_entrar'}

def login(user,pass)
  sleep(0.5)
  keyboard_enter_text('login_edtUsuario', user)
  hide_soft_keyboard()
  keyboard_enter_text('login_edtSenha', pass)
  hide_soft_keyboard()
  tap_on bt_entrar
end

def contem_mensagem_sucesso
  is_alert_exist_with_text("Logado com sucesso")
end

end


  