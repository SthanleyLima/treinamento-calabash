# language: pt
# encoding UTF-8

Funcionalidade: Login
   Cenário: Logar com sucesso
      Dado que estou na tela de login
      Quando preencho os dados com valores válidos de um usuário
      Entao devo ver a mensagem logado com sucesso

   Cenário: Logar sem email
      Dado que estou na tela de login
      Quando preencho os dados com email invalido
      Entao devo ver a mensagem digite um email valido

@slima
   Cenário: Logar sem senha
      Dado que estou na tela de login
      Quando preencho os dados com senha em branco
      Entao devo ver a mensagem senha obrigatoria