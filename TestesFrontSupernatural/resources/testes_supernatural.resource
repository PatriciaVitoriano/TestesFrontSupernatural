*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}                https://automacao.qacoders-academy.com.br/login
${HOME_URL}           https://automacao.qacoders-academy.com.br/home
${EMAIL}              sysadmin@qacoders.com
${PASSWORD}           1234@Test
${emailInput}         //input[contains(@type,'text')]
${senhaInput}         //input[contains(@type,'password')]
${cadastrarButton}    //button[@class='MuiButtonBase-root MuiButton-root MuiButton-contained MuiButton-containedOrange MuiButton-sizeMedium MuiButton-containedSizeMedium MuiButton-root MuiButton-contained MuiButton-containedOrange MuiButton-sizeMedium MuiButton-containedSizeMedium css-ojf4v2'][contains(.,'Entrar')]
${homeElement}        //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Cadastros')]
${cadastros}          //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Cadastros')]
${usuários}           //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Usuários')]
${novoCadastro}       //button[@class='css-fvzsut'][contains(.,'Novo Cadastro')]
${nomeCompleto}       //input[contains(@name,'fullName')]
${emailUsuário}       //input[contains(@name,'mail')]
${perfilAcesso}       //input[contains(@name,'accessProfile')]
${cpfUsuário}         //input[contains(@name,'cpf')]
${passwordUsuário}    //input[contains(@name,'password')]
${confirmePassword}   //input[contains(@name,'confirmPassword')]
${salvarNovoUsuário}  //button[@type='submit'][contains(.,'SALVAR NOVO')]



*** Keywords ***
Abrir o navegador
   Open Browser    browser=chrome
   Maximize Browser Window

Fechar o navegador
   Close Browser

Passo 1 - Acessar a página de login qacoders academy
   Go To    url=${URL}

Passo 2 - Digitar um email
   Wait Until Element Is Visible    locator=${emailInput}
   Input Text    locator=${emailInput}    text=${EMAIL}

Passo 3 - Digitar uma senha
   Wait Until Element Is Visible    locator=${senhaInput}
   Input Password                   locator=${senhaInput}    password=${PASSWORD}

Passo 4 - Clicar em cadastrarButton
   Wait Until Element Is Visible    locator=${cadastrarButton}
   Click Button                     locator=${cadastrarButton}

Validar redirecionamento para a página Home
    Wait Until Element Is Visible    locator=${homeElement}    timeout=10s


Passo 5 - Clicar Cadastros
   Wait Until Element Is Visible    locator=${cadastros}
   Click Element                    locator=${cadastros}

Passo 6 - Clicar em Usuários
   Wait Until Element Is Visible   locator=${usuários}
   Click Element                   locator=${usuários}

Passo 7 - Clicar no botão Novo Cadastro
   Wait Until Element Is Visible    locator=${novoCadastro}
   Click Element                     locator=${novoCadastro}

Passo 8 - Inserir nome completo
   Wait Until Element Is Visible    locator=${nomeCompleto}  
   Input Text                       locator=${nomeCompleto}     text=Supernatural Teste

Passo 9 - Inserir email do usuario
   Wait Until Element Is Visible    locator=${emailUsuário} 
   Input Text                       locator=${emailUsuário}     text=supernatural.teste@gmail.com

Passo 10 - Inserir perfil de acesso
   Wait Until Element Is Visible    locator=${perfilAcesso}
   Input Text                       locator=${perfilAcesso}    text=ADMIN

Passo 11 - Inserir CPF
   Wait Until Element Is Visible    locator=${cpfUsuário}
   Input Text    locator=${cpfUsuário}    text=3679631590

Passo 12 - Inserir senha
   Wait Until Element Is Visible    locator=${passwordUsuário}
   Input Password    locator=${passwordUsuário}    password=1234@Super

Passo 13 - Inserir confirme sua senha
   Wait Until Element Is Visible    locator=${confirmePassword}
   Input Password    locator=${confirmePassword}    password=1234@Super

Passo 14 - Clicar no botão Salvar Novo
   Wait Until Element Is Visible    locator=${salvarNovoUsuário}
   Click Element    locator=${salvarNovoUsuário}

Clicar em Diretorias
   Wait Until Element Is Visible    locator=//span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Diretorias')]
   Click Element    locator=//span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Diretorias')]

Clicar em Novo Cadastro em Diretorias
   Wait Until Element Is Visible    locator=//button[@class='css-fvzsut'][contains(.,'Novo Cadastro')]
   Click Button    locator=//button[@class='css-fvzsut'][contains(.,'Novo Cadastro')]

Inserir Nome da Diretoria
   Wait Until Element Is Visible    locator=//input[contains(@class,'MuiInputBase-input MuiInput-input css-mnn31')]
   Input Text    locator=//input[contains(@class,'MuiInputBase-input MuiInput-input css-mnn31')]    text=Supernatural

Clicar em Salvar Novo em Diretoria
   Wait Until Element Is Visible    locator=//button[@type='submit'][contains(.,'SALVAR NOVO')]
   Click Button    locator=//button[@type='submit'][contains(.,'SALVAR NOVO')]