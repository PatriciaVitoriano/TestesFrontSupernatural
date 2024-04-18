*** Settings ***

Resource       ../../resources/testes_supernatural.resource
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador


*** Test Cases ***

Cenário de teste: Login administrador

  Passo 1 - Acessar a página de login qacoders academy
  Passo 2 - Digitar um email
  Passo 3 - Digitar uma senha
  Passo 4 - Clicar em cadastrarButton
  Validar redirecionamento para a página Home


Cenário de teste: Cadastrar novo usuário
  Passo 1 - Acessar a página de login qacoders academy
  Passo 2 - Digitar um email
  Passo 3 - Digitar uma senha
  Passo 4 - Clicar em cadastrarButton
  Passo 5 - Clicar Cadastros
  Passo 6 - Clicar em Usuários
  Passo 7 - Clicar no botão Novo Cadastro
  Passo 8 - Inserir nome completo
  Passo 9 - Inserir email do usuario
  Passo 10 - Inserir perfil de acesso
  Passo 11 - Inserir CPF
  Passo 12 - Inserir senha
  Passo 13 - Inserir confirme sua senha
  Passo 14 - Clicar no botão Salvar Novo

Cenário de teste: Cadastrar nova Diretoria
  Passo 1 - Acessar a página de login qacoders academy
  Passo 2 - Digitar um email
  Passo 3 - Digitar uma senha
  Passo 4 - Clicar em cadastrarButton
  Passo 5 - Clicar Cadastros
  Clicar em Diretorias
  Clicar em Novo Cadastro em Diretorias
  Inserir Nome da Diretoria
  Clicar em Salvar Novo em Diretoria
   