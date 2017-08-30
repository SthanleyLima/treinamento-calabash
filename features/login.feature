# language: pt
# encoding UTF-8

Funcionalidade: Login
   Cenário: Logar com sucesso
      Dado que estou na tela de login
      Quando eu preencher o campo usuario
        E eu preencher o campo senha
        E acionar o botao login
      Entao devo ver a mensagem "logado com sucesso"